// Copyright (C) 2021 Monocle authors
// SPDX-License-Identifier: AGPL-3.0-or-later
//
// The search bar component
//
open Prelude

@react.component
let make = (~initialValue: string, ~fields: list<SearchTypes.field>, ~onSearch) => {
  let (value, setValue) = React.useState(_ => initialValue)
  let onChange = (v, _) => setValue(_ => v)
  // Help
  let renderFieldType = (ft: SearchTypes.field_type) =>
    switch ft {
    | SearchTypes.Field_date => "date"
    | SearchTypes.Field_number => "number"
    | SearchTypes.Field_text => "text"
    | SearchTypes.Field_bool => "boolean"
    | SearchTypes.Field_regex => "regex"
    }
  let renderField = (f: SearchTypes.field) =>
    <li key={f.name}>
      <b> {f.name->str} </b>
      {(" : " ++ f.description ++ " (" ++ renderFieldType(f.type_) ++ ")")->str}
    </li>
  let li = s => <li> {s->str} </li>
  let content =
    <div style={ReactDOM.Style.make(~textAlign="left", ())}>
      <h3> {"Example"->str} </h3>
      <ul>
        {"state:open and review_count:0"->li}
        {"(repo : openstack/nova or repo: openstack/neutron) and user_group:qa and updated_at > 2020 order by score"->li}
      </ul>
      <h3> {"Available fields"->str} </h3>
      <ul> {fields->Belt.List.map(renderField)->Belt.List.toArray->React.array} </ul>
      <h3> {"Search syntax"->str} </h3>
      <ul> {"expr and expr"->li} {"expr order by field limit count"->li} </ul>
      <h3> {"Expr syntax"->str} </h3>
      <ul> {"field:value"->li} {"date_field>YYYY-MM-DD"->li} {"number_field>42"->li} </ul>
    </div>

  <form
    onSubmit={e => {
      e->ReactEvent.Form.preventDefault
      value->onSearch
    }}>
    <span style={ReactDOM.Style.make(~display="flex", ())}>
      <span>
        <Patternfly.Tooltip position=#Bottom content>
          <Patternfly.Icons.OutlinedQuestionCircle />
        </Patternfly.Tooltip>
      </span>
      <Patternfly.TextInput id="fri-search" value _type=#Text iconVariant=#Search onChange />
    </span>
  </form>
}

let default = make