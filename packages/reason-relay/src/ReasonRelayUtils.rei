/** Collects all non-null nodes from a connection. */
let collectConnectionNodes:
  {
    ..
    "edges":
      Js.Nullable.t(array(Js.Nullable.t({.. "node": Js.Nullable.t('a)}))),
  } =>
  array('a);

/** Tries to return a record from a nested path of linked records. */;
let resolveNestedRecord:
  (~rootRecord: option(ReasonRelay.RecordProxy.t), ~path: list(string)) =>
  option(ReasonRelay.RecordProxy.t);

/** Helpers for handling connections. */
type insertAt =
  | Start
  | End;

type connectionConfig = {
  parentID: ReasonRelay.dataId,
  key: string,
};

let removeNodeFromConnections:
  (
    ~store: ReasonRelay.RecordSourceSelectorProxy.t,
    ~node: ReasonRelay.RecordProxy.t,
    ~connections: list(connectionConfig)
  ) =>
  unit;

let createAndAddEdgeToConnections:
  (
    ~store: ReasonRelay.RecordSourceSelectorProxy.t,
    ~node: ReasonRelay.RecordProxy.t,
    ~connections: list(connectionConfig),
    ~edgeName: string,
    ~insertAt: insertAt
  ) =>
  unit;