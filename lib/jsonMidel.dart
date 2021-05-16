

import 'dart:convert';

JsonResponse jsonResponseFromJson(String str) => JsonResponse.fromJson(json.decode(str));

String jsonResponseToJson(JsonResponse data) => json.encode(data.toJson());

class JsonResponse {
  JsonResponse({
    this.items,
  });

  List<Item> items;

  factory JsonResponse.fromJson(Map<String, dynamic> json) => JsonResponse(
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  Item({
    this.id,
    this.name,
    this.description,
  });

  String id;
  String name;
  String description;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    name: json["name"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
  };
}
