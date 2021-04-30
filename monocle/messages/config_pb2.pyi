"""
@generated by mypy-protobuf.  Do not edit manually!
isort:skip_file
"""
import builtins
import google.protobuf.descriptor
import google.protobuf.internal.containers
import google.protobuf.message
import typing
import typing_extensions

DESCRIPTOR: google.protobuf.descriptor.FileDescriptor = ...

class ProjectDefinition(google.protobuf.message.Message):
    DESCRIPTOR: google.protobuf.descriptor.Descriptor = ...
    NAME_FIELD_NUMBER: builtins.int
    REPOSITORY_REGEX_FIELD_NUMBER: builtins.int
    BRANCH_REGEX_FIELD_NUMBER: builtins.int
    FILE_REGEX_FIELD_NUMBER: builtins.int
    name: typing.Text = ...
    repository_regex: typing.Text = ...
    branch_regex: typing.Text = ...
    file_regex: typing.Text = ...
    def __init__(
        self,
        *,
        name: typing.Text = ...,
        repository_regex: typing.Text = ...,
        branch_regex: typing.Text = ...,
        file_regex: typing.Text = ...,
    ) -> None: ...
    def ClearField(
        self,
        field_name: typing_extensions.Literal[
            "branch_regex",
            b"branch_regex",
            "file_regex",
            b"file_regex",
            "name",
            b"name",
            "repository_regex",
            b"repository_regex",
        ],
    ) -> None: ...

global___ProjectDefinition = ProjectDefinition

class GetProjectsRequest(google.protobuf.message.Message):
    DESCRIPTOR: google.protobuf.descriptor.Descriptor = ...
    INDEX_FIELD_NUMBER: builtins.int
    index: typing.Text = ...
    def __init__(
        self,
        *,
        index: typing.Text = ...,
    ) -> None: ...
    def ClearField(
        self, field_name: typing_extensions.Literal["index", b"index"]
    ) -> None: ...

global___GetProjectsRequest = GetProjectsRequest

class GetProjectsResponse(google.protobuf.message.Message):
    DESCRIPTOR: google.protobuf.descriptor.Descriptor = ...
    PROJECTS_FIELD_NUMBER: builtins.int
    @property
    def projects(
        self,
    ) -> google.protobuf.internal.containers.RepeatedCompositeFieldContainer[
        global___ProjectDefinition
    ]: ...
    def __init__(
        self,
        *,
        projects: typing.Optional[typing.Iterable[global___ProjectDefinition]] = ...,
    ) -> None: ...
    def ClearField(
        self, field_name: typing_extensions.Literal["projects", b"projects"]
    ) -> None: ...

global___GetProjectsResponse = GetProjectsResponse
