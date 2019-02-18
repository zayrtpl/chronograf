from(bucket:"testdb")
  |> range(start: 2018-05-22T19:53:26Z)
  |> group(by: ["_stop", "_measurement", "_field", "host"])
  |> mean()
  |> pivot(rowKey: ["_stop"], columnKey: ["host"], valueColumn: "_value")
  |> yield(name:"0")