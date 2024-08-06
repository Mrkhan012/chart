class Petrol {
  String? indexName;
  String? title;
  String? desc;
  int? created;
  int? updated;
  String? createdDate;
  String? updatedDate;
  String? active;
  String? visualizable;
  String? catalogUuid;
  String? source;
  String? orgType;
  List<String>? org;
  List<String>? sector;
  List<Field>? field;
  TargetBucket? targetBucket;
  String? message;
  String? version;
  String? status;
  int? total;
  int? count;
  String? limit;
  String? offset;
  List<Records>? records;

  Petrol(
      {this.indexName,
      this.title,
      this.desc,
      this.created,
      this.updated,
      this.createdDate,
      this.updatedDate,
      this.active,
      this.visualizable,
      this.catalogUuid,
      this.source,
      this.orgType,
      this.org,
      this.sector,
      this.field,
      this.targetBucket,
      this.message,
      this.version,
      this.status,
      this.total,
      this.count,
      this.limit,
      this.offset,
      this.records});

  Petrol.fromJson(Map<String, dynamic> json) {
    indexName = json['index_name'];
    title = json['title'];
    desc = json['desc'];
    created = json['created'];
    updated = json['updated'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
    active = json['active'];
    visualizable = json['visualizable'];
    catalogUuid = json['catalog_uuid'];
    source = json['source'];
    orgType = json['org_type'];
    org = json['org'].cast<String>();
    sector = json['sector'].cast<String>();
    if (json['field'] != null) {
      field = <Field>[];
      json['field'].forEach((v) {
        field!.add(Field.fromJson(v));
      });
    }
    targetBucket = json['target_bucket'] != null
        ? TargetBucket.fromJson(json['target_bucket'])
        : null;
    message = json['message'];
    version = json['version'];
    status = json['status'];
    total = json['total'];
    count = json['count'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['records'] != null) {
      records = <Records>[];
      json['records'].forEach((v) {
        records!.add(Records.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['index_name'] = indexName;
    data['title'] = title;
    data['desc'] = desc;
    data['created'] = created;
    data['updated'] = updated;
    data['created_date'] = createdDate;
    data['updated_date'] = updatedDate;
    data['active'] = active;
    data['visualizable'] = visualizable;
    data['catalog_uuid'] = catalogUuid;
    data['source'] = source;
    data['org_type'] = orgType;
    data['org'] = org;
    data['sector'] = sector;
    if (field != null) {
      data['field'] = field!.map((v) => v.toJson()).toList();
    }
    if (targetBucket != null) {
      data['target_bucket'] = targetBucket!.toJson();
    }
    data['message'] = message;
    data['version'] = version;
    data['status'] = status;
    data['total'] = total;
    data['count'] = count;
    data['limit'] = limit;
    data['offset'] = offset;
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Field {
  String? name;
  String? id;
  String? type;
  String? format;

  Field({this.name, this.id, this.type, this.format});

  Field.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    type = json['type'];
    format = json['format'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['type'] = type;
    data['format'] = format;
    return data;
  }
}

class TargetBucket {
  String? index;
  String? type;
  String? field;

  TargetBucket({this.index, this.type, this.field});

  TargetBucket.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    type = json['type'];
    field = json['field'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['index'] = index;
    data['type'] = type;
    data['field'] = field;
    return data;
  }
}

class Records {
  String? month;
  String? year;
  String? products;
  String? quantity000MetricTonnes;
  String? updatedDate;

  Records(
      {this.month,
      this.year,
      this.products,
      this.quantity000MetricTonnes,
      this.updatedDate});

  Records.fromJson(Map<String, dynamic> json) {
    month = json['month'];
    year = json['year'];
    products = json['products'];
    quantity000MetricTonnes = json['quantity_000_metric_tonnes']; // Updated key
    updatedDate = json['updated_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['month'] = month;
    data['year'] = year;
    data['products'] = products;
    data['quantity_000_metric_tonnes'] = quantity000MetricTonnes; // Updated key
    data['updated_date'] = updatedDate;
    return data;
  }
}
