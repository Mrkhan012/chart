class WholesalePriceIndex {
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

  WholesalePriceIndex({
    this.indexName,
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
    this.records,
  });

  WholesalePriceIndex.fromJson(Map<String, dynamic> json) {
    indexName = json['index_name'];
    title = json['title'];
    desc = json['desc'];
    created = json['created']?.toInt();
    updated = json['updated']?.toInt();
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
    active = json['active'];
    visualizable = json['visualizable'];
    catalogUuid = json['catalog_uuid'];
    source = json['source'];
    orgType = json['org_type'];
    org = List<String>.from(json['org'] ?? []);
    sector = List<String>.from(json['sector'] ?? []);
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
    total = json['total']?.toInt();
    count = json['count']?.toInt();
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

  Field({this.name, this.id, this.type});

  Field.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['type'] = type;
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
  String? tIMESTAMP;
  double? cOMMWT;
  String? cOMMNAME;
  double? iNDEX2013;
  double? iNDEX2014;
  double? iNDEX2015;
  double? iNDEX2016;
  double? iNDEX2017;
  double? iNDEX2018;
  double? iNDEX2019;
  double? iNDEX2020;
  double? iNDEX2021;
  double? iNDEX2022;
  double? iNDEX2023;

  Records({
    this.tIMESTAMP,
    this.cOMMWT,
    this.cOMMNAME,
    this.iNDEX2013,
    this.iNDEX2014,
    this.iNDEX2015,
    this.iNDEX2016,
    this.iNDEX2017,
    this.iNDEX2018,
    this.iNDEX2019,
    this.iNDEX2020,
    this.iNDEX2021,
    this.iNDEX2022,
    this.iNDEX2023,
  });

  Records.fromJson(Map<String, dynamic> json) {
    tIMESTAMP = json['TIMESTAMP'];
    cOMMWT = (json['COMMWT'] != null) ? double.parse(json['COMMWT']) : null;
    cOMMNAME = json['COMMNAME'];
    iNDEX2013 =
        (json['INDEX2013'] != null) ? double.parse(json['INDEX2013']) : null;
    iNDEX2014 =
        (json['INDEX2014'] != null) ? double.parse(json['INDEX2014']) : null;
    iNDEX2015 =
        (json['INDEX2015'] != null) ? double.parse(json['INDEX2015']) : null;
    iNDEX2016 =
        (json['INDEX2016'] != null) ? double.parse(json['INDEX2016']) : null;
    iNDEX2017 =
        (json['INDEX2017'] != null) ? double.parse(json['INDEX2017']) : null;
    iNDEX2018 =
        (json['INDEX2018'] != null) ? double.parse(json['INDEX2018']) : null;
    iNDEX2019 =
        (json['INDEX2019'] != null) ? double.parse(json['INDEX2019']) : null;
    iNDEX2020 =
        (json['INDEX2020'] != null) ? double.parse(json['INDEX2020']) : null;
    iNDEX2021 =
        (json['INDEX2021'] != null) ? double.parse(json['INDEX2021']) : null;
    iNDEX2022 =
        (json['INDEX2022'] != null) ? double.parse(json['INDEX2022']) : null;
    iNDEX2023 =
        (json['INDEX2023'] != null) ? double.parse(json['INDEX2023']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['TIMESTAMP'] = tIMESTAMP;
    data['COMMWT'] = cOMMWT;
    data['COMMNAME'] = cOMMNAME;
    data['INDEX2013'] = iNDEX2013;
    data['INDEX2014'] = iNDEX2014;
    data['INDEX2015'] = iNDEX2015;
    data['INDEX2016'] = iNDEX2016;
    data['INDEX2017'] = iNDEX2017;
    data['INDEX2018'] = iNDEX2018;
    data['INDEX2019'] = iNDEX2019;
    data['INDEX2020'] = iNDEX2020;
    data['INDEX2021'] = iNDEX2021;
    data['INDEX2022'] = iNDEX2022;
    data['INDEX2023'] = iNDEX2023;
    return data;
  }
}
