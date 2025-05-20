// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sc_call_function_params.freezed.dart';
part 'sc_call_function_params.g.dart';

/// Represents the parameters required to call a function on a smart contract.
///
/// This class encapsulates the target [contract] address, the [function] name to be called,
/// the [args] to pass to the function, and a flag [resolveLast] to indicate
/// whether the last transaction of the contract should be resolved before the call.
@freezed
abstract class SCCallFunctionParams with _$SCCallFunctionParams {
  /// Creates an instance of [SCCallFunctionParams].
  ///
  /// - [contract]: The address of the smart contract to call.
  /// - [function]: The name of the function to execute on the smart contract.
  /// - [args]: A list of arguments to pass to the smart contract function.
  ///           The elements can be of any dynamic type compatible with the contract's function signature.
  /// - [resolveLast]: A boolean flag indicating whether to resolve the last transaction of the contract
  ///                  before making the function call. Defaults to `true`.
  ///                  In JSON, this field is represented as "resolve_last".
  const factory SCCallFunctionParams({
    /// The address of the target smart contract.
    required final String contract,

    /// The name of the function to be invoked on the smart contract.
    required final String function,

    /// The list of arguments to be passed to the smart contract function.
    /// These should be in the order expected by the function signature.
    required final List<dynamic> args,

    /// Specifies whether the last transaction of the contract chain should be resolved
    /// before executing the function call. This ensures the call operates on the latest state.
    /// Defaults to `true`.
    @Default(true) @JsonKey(name: 'resolve_last') final bool resolveLast,
  }) = _SCCallFunctionParams;

  /// Creates an [SCCallFunctionParams] instance from a JSON map.
  ///
  /// This factory uses the `freezed` generated `_$SCCallFunctionParamsFromJson` function
  /// to deserialize the JSON data.
  factory SCCallFunctionParams.fromJson(final Map<String, dynamic> json) =>
      _$SCCallFunctionParamsFromJson(json);
}
