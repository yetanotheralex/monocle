// Copyright (C) 2021 Monocle authors
// SPDX-License-Identifier: AGPL-3.0-or-later

// Generated by monocle-codegen. DO NOT EDIT!

type axiosResponse<'data> = {data: 'data}
type axios<'data> = Js.Promise.t<axiosResponse<'data>>
let serverUrl = %raw(`
  (window.API_URL !== '__API_URL__' ? window.API_URL : process.env.REACT_APP_API_URL || '')
`)

module Login = {
  @module("axios")
  external loginValidationRaw: (string, 'a) => axios<'b> = "post"

  let loginValidation = (request: LoginTypes.login_validation_request): axios<
    LoginTypes.login_validation_response,
  > =>
    request->LoginBs.encode_login_validation_request
    |> loginValidationRaw(serverUrl ++ "/api/2/login/username/validate")
    |> Js.Promise.then_(resp =>
      {data: resp.data->LoginBs.decode_login_validation_response}->Js.Promise.resolve
    )
}

module Auth = {
  @module("axios")
  external getMagicJwtRaw: (string, 'a) => axios<'b> = "post"

  let getMagicJwt = (request: AuthTypes.get_magic_jwt_request): axios<
    AuthTypes.get_magic_jwt_response,
  > =>
    request->AuthBs.encode_get_magic_jwt_request
    |> getMagicJwtRaw(serverUrl ++ "/api/2/auth/get")
    |> Js.Promise.then_(resp =>
      {data: resp.data->AuthBs.decode_get_magic_jwt_response}->Js.Promise.resolve
    )
  @module("axios")
  external whoAmiRaw: (string, 'a) => axios<'b> = "post"

  let whoAmi = (request: AuthTypes.who_ami_request): axios<AuthTypes.who_ami_response> =>
    request->AuthBs.encode_who_ami_request
    |> whoAmiRaw(serverUrl ++ "/api/2/auth/whoami")
    |> Js.Promise.then_(resp =>
      {data: resp.data->AuthBs.decode_who_ami_response}->Js.Promise.resolve
    )
}

module Config = {
  @module("axios")
  external getWorkspacesRaw: (string, 'a) => axios<'b> = "post"

  let getWorkspaces = (request: ConfigTypes.get_workspaces_request): axios<
    ConfigTypes.get_workspaces_response,
  > =>
    request->ConfigBs.encode_get_workspaces_request
    |> getWorkspacesRaw(serverUrl ++ "/api/2/get_workspaces")
    |> Js.Promise.then_(resp =>
      {data: resp.data->ConfigBs.decode_get_workspaces_response}->Js.Promise.resolve
    )
  @module("axios")
  external getProjectsRaw: (string, 'a) => axios<'b> = "post"

  let getProjects = (request: ConfigTypes.get_projects_request): axios<
    ConfigTypes.get_projects_response,
  > =>
    request->ConfigBs.encode_get_projects_request
    |> getProjectsRaw(serverUrl ++ "/api/2/get_projects")
    |> Js.Promise.then_(resp =>
      {data: resp.data->ConfigBs.decode_get_projects_response}->Js.Promise.resolve
    )
  @module("axios")
  external getGroupsRaw: (string, 'a) => axios<'b> = "post"

  let getGroups = (request: ConfigTypes.get_groups_request): axios<
    ConfigTypes.get_groups_response,
  > =>
    request->ConfigBs.encode_get_groups_request
    |> getGroupsRaw(serverUrl ++ "/api/2/get_groups")
    |> Js.Promise.then_(resp =>
      {data: resp.data->ConfigBs.decode_get_groups_response}->Js.Promise.resolve
    )
  @module("axios")
  external getGroupMembersRaw: (string, 'a) => axios<'b> = "post"

  let getGroupMembers = (request: ConfigTypes.get_group_members_request): axios<
    ConfigTypes.get_group_members_response,
  > =>
    request->ConfigBs.encode_get_group_members_request
    |> getGroupMembersRaw(serverUrl ++ "/api/2/get_group_members")
    |> Js.Promise.then_(resp =>
      {data: resp.data->ConfigBs.decode_get_group_members_response}->Js.Promise.resolve
    )
  @module("axios")
  external getAboutRaw: (string, 'a) => axios<'b> = "post"

  let getAbout = (request: ConfigTypes.get_about_request): axios<ConfigTypes.get_about_response> =>
    request->ConfigBs.encode_get_about_request
    |> getAboutRaw(serverUrl ++ "/api/2/about")
    |> Js.Promise.then_(resp =>
      {data: resp.data->ConfigBs.decode_get_about_response}->Js.Promise.resolve
    )
}

module Search = {
  @module("axios")
  external suggestionsRaw: (string, 'a) => axios<'b> = "post"

  let suggestions = (request: SearchTypes.suggestions_request): axios<
    SearchTypes.suggestions_response,
  > =>
    request->SearchBs.encode_suggestions_request
    |> suggestionsRaw(serverUrl ++ "/api/2/suggestions")
    |> Js.Promise.then_(resp =>
      {data: resp.data->SearchBs.decode_suggestions_response}->Js.Promise.resolve
    )
  @module("axios")
  external fieldsRaw: (string, 'a) => axios<'b> = "post"

  let fields = (request: SearchTypes.fields_request): axios<SearchTypes.fields_response> =>
    request->SearchBs.encode_fields_request
    |> fieldsRaw(serverUrl ++ "/api/2/search/fields")
    |> Js.Promise.then_(resp =>
      {data: resp.data->SearchBs.decode_fields_response}->Js.Promise.resolve
    )
  @module("axios")
  external checkRaw: (string, 'a) => axios<'b> = "post"

  let check = (request: SearchTypes.check_request): axios<SearchTypes.check_response> =>
    request->SearchBs.encode_check_request
    |> checkRaw(serverUrl ++ "/api/2/search/check")
    |> Js.Promise.then_(resp =>
      {data: resp.data->SearchBs.decode_check_response}->Js.Promise.resolve
    )
  @module("axios")
  external queryRaw: (string, 'a) => axios<'b> = "post"

  let query = (request: SearchTypes.query_request): axios<SearchTypes.query_response> =>
    request->SearchBs.encode_query_request
    |> queryRaw(serverUrl ++ "/api/2/search/query")
    |> Js.Promise.then_(resp =>
      {data: resp.data->SearchBs.decode_query_response}->Js.Promise.resolve
    )
  @module("axios")
  external authorRaw: (string, 'a) => axios<'b> = "post"

  let author = (request: SearchTypes.author_request): axios<SearchTypes.author_response> =>
    request->SearchBs.encode_author_request
    |> authorRaw(serverUrl ++ "/api/2/search/author")
    |> Js.Promise.then_(resp =>
      {data: resp.data->SearchBs.decode_author_response}->Js.Promise.resolve
    )
}

module Metric = {
  @module("axios")
  external listRaw: (string, 'a) => axios<'b> = "post"

  let list = (request: MetricTypes.list_request): axios<MetricTypes.list_response> =>
    request->MetricBs.encode_list_request
    |> listRaw(serverUrl ++ "/api/2/metric/list")
    |> Js.Promise.then_(resp =>
      {data: resp.data->MetricBs.decode_list_response}->Js.Promise.resolve
    )
  @module("axios")
  external getRaw: (string, 'a) => axios<'b> = "post"

  let get = (request: MetricTypes.get_request): axios<MetricTypes.get_response> =>
    request->MetricBs.encode_get_request
    |> getRaw(serverUrl ++ "/api/2/metric/get")
    |> Js.Promise.then_(resp => {data: resp.data->MetricBs.decode_get_response}->Js.Promise.resolve)
}

module Crawler = {

}
