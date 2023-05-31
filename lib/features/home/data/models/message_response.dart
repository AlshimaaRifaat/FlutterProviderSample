///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
const String _jsonKeyMessagesResponseMessage = 'message';
const String _jsonKeyMessagesResponseUserName = 'userName';
const String _jsonKeyMessagesResponseImage = 'image';
const String _jsonKeyMessagesResponseTime = 'time';
const String _jsonKeyMessagesResponseId = 'id';
const String _jsonKeyMessagesResponseIsActive = 'isActive';
class MessageResponse {
/*
{
  "message": "Human Interactions Liaison",
  "userName": "Tyrone Shields",
  "image": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/586.jpg",
  "time": "time 1",
  "id": "1"
}
*/

  String? message;
  String userName ='';
  String? image;
  String? time;
  String? id;
  bool? isActive;

  MessageResponse({
    this.message,
    required this.userName,
    this.image,
    this.time,
    this.id,
    this.isActive,
  });
  MessageResponse.fromJson(Map<String, dynamic> json) {
    message = json[_jsonKeyMessagesResponseMessage]?.toString();
    userName = json[_jsonKeyMessagesResponseUserName];
    image = json[_jsonKeyMessagesResponseImage]?.toString();
    time = json[_jsonKeyMessagesResponseTime]?.toString();
    id = json[_jsonKeyMessagesResponseId]?.toString();
    isActive = json[_jsonKeyMessagesResponseIsActive];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data[_jsonKeyMessagesResponseMessage] = message;
    data[_jsonKeyMessagesResponseUserName] = userName;
    data[_jsonKeyMessagesResponseImage] = image;
    data[_jsonKeyMessagesResponseTime] = time;
    data[_jsonKeyMessagesResponseId] = id;
    data[_jsonKeyMessagesResponseIsActive] = isActive;
    return data;
  }
}
