import 'package:json_annotation/json_annotation.dart';

part 'agent.g.dart';

@JsonSerializable()
class Agent {
  int idAgent;
  String dsAgent;
  int idUser;
  int idDealer;
  int idRoute;
  int idSalesOrg;
  int idVisitPlan;
  String dsParameter;
  bool flDayFinished;
  DateTime dtLastVisitListDay;

  Agent();

  Map<String, dynamic> toDbMap() {
    return <String, dynamic>{
      "ID_AGENT": this.idAgent,
      "DS_AGENT": this.dsAgent,
      "FL_DAY_FINISHED": this.flDayFinished
    };
  }

   static Agent fromDbMap(Map<String, dynamic> map) {
    var agent = new Agent();
    agent.idAgent = map["ID_AGENT"];
    agent.dsAgent = map["DS_AGENT"];
    agent.idUser = map["ID_USER"];
    agent.idDealer = map["ID_DEALER"];
    agent.idRoute = map["ID_ROUTE"];
    agent.idSalesOrg = map["ID_SALES_ORG"];
    agent.idVisitPlan = map["ID_VISIT_PLAN"];
    agent.dsParameter = map["DS_PARAMETER"];
    agent.flDayFinished = getFromMap(map, "FL_DAY_FINISHED");
    agent.dtLastVisitListDay = getFromMap(map, "DT_LAST_VISIT_LIST_DAY");
    return agent;
  }

  static T getFromMap<T>(Map<String, dynamic> map, String key)
  {
    var value = map[key];
    if (T == bool) {
       return !(value == null || value == 0) as T;
    }
    else{
      return value as T;
    }
  }

  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);

  Map<String, dynamic> toJson() => _$AgentToJson(this);
}