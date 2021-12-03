"""
@generated by mypy-protobuf.  Do not edit manually!
isort:skip_file
"""
import builtins
import google.protobuf.descriptor
import google.protobuf.internal.enum_type_wrapper
import google.protobuf.message
import typing
import typing_extensions

DESCRIPTOR: google.protobuf.descriptor.FileDescriptor = ...

class LoginValidationRequest(google.protobuf.message.Message):
    DESCRIPTOR: google.protobuf.descriptor.Descriptor = ...
    USERNAME_FIELD_NUMBER: builtins.int
    username: typing.Text = ...
    def __init__(
        self,
        *,
        username: typing.Text = ...,
    ) -> None: ...
    def ClearField(
        self, field_name: typing_extensions.Literal["username", b"username"]
    ) -> None: ...

global___LoginValidationRequest = LoginValidationRequest

class LoginValidationResponse(google.protobuf.message.Message):
    DESCRIPTOR: google.protobuf.descriptor.Descriptor = ...
    class ValidationResult(
        _ValidationResult, metaclass=_ValidationResultEnumTypeWrapper
    ):
        pass
    class _ValidationResult:
        V = typing.NewType("V", builtins.int)
    class _ValidationResultEnumTypeWrapper(
        google.protobuf.internal.enum_type_wrapper._EnumTypeWrapper[
            _ValidationResult.V
        ],
        builtins.type,
    ):
        DESCRIPTOR: google.protobuf.descriptor.EnumDescriptor = ...
        UnknownIdent = LoginValidationResponse.ValidationResult.V(0)
        KnownIdent = LoginValidationResponse.ValidationResult.V(1)
    UnknownIdent = LoginValidationResponse.ValidationResult.V(0)
    KnownIdent = LoginValidationResponse.ValidationResult.V(1)

    VALIDATION_RESULT_FIELD_NUMBER: builtins.int
    validation_result: global___LoginValidationResponse.ValidationResult.V = ...
    def __init__(
        self,
        *,
        validation_result: global___LoginValidationResponse.ValidationResult.V = ...,
    ) -> None: ...
    def HasField(
        self,
        field_name: typing_extensions.Literal[
            "result", b"result", "validation_result", b"validation_result"
        ],
    ) -> builtins.bool: ...
    def ClearField(
        self,
        field_name: typing_extensions.Literal[
            "result", b"result", "validation_result", b"validation_result"
        ],
    ) -> None: ...
    def WhichOneof(
        self, oneof_group: typing_extensions.Literal["result", b"result"]
    ) -> typing.Optional[typing_extensions.Literal["validation_result"]]: ...

global___LoginValidationResponse = LoginValidationResponse
