// ignore_for_file: type_annotate_public_apis, strict_top_level_inference

import 'package:archethic_lib_dart/src/model/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract.freezed.dart';
part 'contract.g.dart';

/// Represents the manifest of a smart contract, primarily its ABI (Application Binary Interface).
@freezed
abstract class ContractManifest with _$ContractManifest {
  /// Creates a [ContractManifest] instance.
  ///
  /// The [abi] parameter defines the contract's interface.
  const factory ContractManifest({required final WasmABI abi}) =
      _ContractManifest;

  /// Creates a [ContractManifest] instance from a JSON map.
  factory ContractManifest.fromJson(final Map<String, dynamic> json) =>
      _$ContractManifestFromJson(json);
}

/// Defines the WebAssembly (WASM) Application Binary Interface for a smart contract.
///
/// It includes the structure of the contract's state and the definitions of its functions.
@freezed
abstract class WasmABI with _$WasmABI {
  /// Creates a [WasmABI] instance.
  ///
  /// The [state] defines the types of the contract's state variables.
  /// The [functions] defines the signatures and types of the contract's callable functions.
  const factory WasmABI({
    /// A map defining the contract's state variables and their types.
    /// The key is the state variable name, and the value is its type (e.g., "uint64", "string").
    required final Map<String, String> state,

    /// A map defining the contract's functions.
    /// The key is the function name, and the value is a [WASMFunctionABI] object.
    required final Map<String, WASMFunctionABI> functions,
  }) = _WasmABI;

  /// Creates a [WasmABI] instance from a JSON map.
  factory WasmABI.fromJson(final Map<String, dynamic> json) =>
      _$WasmABIFromJson(json);
}

/// Defines the ABI for a single WebAssembly (WASM) function within a smart contract.
@freezed
abstract class WASMFunctionABI with _$WASMFunctionABI {
  /// Creates a [WASMFunctionABI] instance.
  ///
  /// The [type] indicates the nature of the function (e.g., "action", "view").
  /// The [input] defines the expected input parameters and their types.
  /// The [triggerType] specifies how the function can be invoked (e.g., "transaction").
  const factory WASMFunctionABI({
    /// The type of the function, e.g., "action" for state-changing functions, "view" for read-only functions.
    required final String type,

    /// A map defining the input parameters of the function and their types.
    /// The key is the parameter name, and the value can be its type or a more complex structure.
    required final Map<String, dynamic> input,

    /// Specifies how this function is triggered, e.g., "transaction" if it's callable via a transaction.
    final String? triggerType,
  }) = _WASMFunctionABI;

  /// Creates a [WASMFunctionABI] instance from a JSON map.
  factory WASMFunctionABI.fromJson(final Map<String, dynamic> json) =>
      _$WASMFunctionABIFromJson(json);
}

/// Represents an action that can be performed on a smart contract.
///
/// It includes the name of the action (function) and its parameters.
@freezed
abstract class ContractAction with _$ContractAction {
  /// Creates a [ContractAction] instance.
  ///
  /// The [name] is the name of the contract function to call.
  /// The [parameters] is a list of parameter names for that function.
  const factory ContractAction({
    /// The name of the contract function.
    required final String name,

    /// A list of parameter names expected by the function.
    required final List<String> parameters,
  }) = _ContractAction;

  /// Creates a [ContractAction] instance from a JSON map.
  factory ContractAction.fromJson(final Map<String, dynamic> json) =>
      _$ContractActionFromJson(json);
}

/// Represents a smart contract, including its bytecode and manifest (ABI).
@freezed
abstract class Contract with _$Contract {
  /// Creates a [Contract] instance.
  ///
  /// The [bytecode] is the compiled WebAssembly code of the contract.
  /// The [manifest] provides the ABI for interacting with the contract.
  const factory Contract({
    /// The compiled WebAssembly (WASM) bytecode of the smart contract, as a hex string.
    required final String? bytecode,

    /// The manifest of the smart contract, containing its ABI.
    required final ContractManifest manifest,
  }) = _Contract;

  /// Creates a [Contract] instance from a JSON map.
  factory Contract.fromJson(final Map<String, dynamic> json) =>
      _$ContractFromJson(json);

  /// Private constructor for [Contract].
  const Contract._();

  /// Retrieves a list of actions that can be triggered by a transaction from the contract's manifest.
  ///
  /// It filters functions from the ABI that are of type 'action' and have a 'triggerType' of 'transaction'.
  List<ContractAction> getActions() {
    final actions = <ContractAction>[];
    manifest.abi.functions.forEach((final name, final functionABI) {
      if (functionABI.type == 'action' &&
          functionABI.triggerType == 'transaction') {
        actions.add(
          ContractAction(
            name: name,
            parameters: functionABI.input.keys.toList(),
          ),
        );
      }
    });
    return actions;
  }
}

/// Utility extensions for the [Contract] class.
@visibleForTesting
extension ContractUtils on Contract {
  /// TODO: This method seems to create a transaction but doesn't return or use it.
  /// Clarify its purpose. It might be intended to build and sign an upgrade transaction.
  ///
  /// Placeholder for updating a contract transaction. This currently constructs a transaction
  /// to call the 'upgrade' action with the current contract instance as an argument.
  void updateContractTransaction(final String contractAddress) {
    const Transaction(
      type: 'transfer',
    ).addRecipient(contractAddress, action: 'upgrade', args: [this]);
  }

  /// Parses a string representation of contract code (presumably a domain-specific language)
  /// to extract contract actions triggered by transactions.
  ///
  /// This method uses regular expressions to find action definitions.
  /// Note: This parsing is based on a specific string format and might not be robust for all contract languages.
  List<ContractAction> extractActionsFromContract(final String code) {
    final actions = <ContractAction>[];

    final regex = RegExp(
      r'actions\s+triggered_by:\s+transaction,\s+on:\s+([\w\s.,()]+?)\s+do',
    );
    final regexActionName = RegExp(r'(\w+)\((.*?)\)');

    for (final match in regex.allMatches(code)) {
      final fullAction = match.group(1) ?? '';

      for (final actionMatch in regexActionName.allMatches(fullAction)) {
        final name = actionMatch.group(1) ?? '';
        final parameters =
            (actionMatch.group(2) ?? '').isNotEmpty
                ? actionMatch
                    .group(2)!
                    .split(',')
                    .map((final param) => param.trim())
                    .toList()
                : <String>[];
        actions.add(ContractAction(name: name, parameters: parameters));
      }
    }
    return actions;
  }

  /// Parses an input argument to determine its most appropriate type (Map, num, or String).
  ///
  /// This is a helper for dynamically typed arguments.
  dynamic parseTypedArgument(final input) {
    if (input is Map) {
      return input;
    } else if (input is num || num.tryParse(input.toString()) != null) {
      return double.tryParse(input.toString()) ?? input;
    } else {
      return input;
    }
  }
}
