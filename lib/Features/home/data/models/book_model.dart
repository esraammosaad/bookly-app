import 'dart:convert';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  final String? kind;
  final String ?id;
  final String ?etag;
  final String ?selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;
  final AccessInfo accessInfo;

  BookModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
    kind: json["kind"],
    id: json["id"],
    etag: json["etag"],
    selfLink: json["selfLink"],
    volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
    saleInfo: SaleInfo.fromJson(json["saleInfo"]??{}),
    accessInfo: AccessInfo.fromJson(json["accessInfo"]??{}),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "id": id,
    "etag": etag,
    "selfLink": selfLink,
    "volumeInfo": volumeInfo.toJson(),
    "saleInfo": saleInfo.toJson(),
    "accessInfo": accessInfo.toJson(),
  };
}

class AccessInfo {
  final String ?country;
  final String ?viewability;
  final bool ?embeddable;
  final bool ?publicDomain;
  final String? textToSpeechPermission;
  final Epub epub;
  final Pdf pdf;
  final String ?webReaderLink;
  final String ?accessViewStatus;
  final bool ?quoteSharingAllowed;

  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
    country: json["country"],
    viewability: json["viewability"],
    embeddable: json["embeddable"],
    publicDomain: json["publicDomain"],
    textToSpeechPermission: json["textToSpeechPermission"],
    epub: Epub.fromJson(json["epub"]??{}),
    pdf: Pdf.fromJson(json["pdf"]??{}),
    webReaderLink: json["webReaderLink"],
    accessViewStatus: json["accessViewStatus"],
    quoteSharingAllowed: json["quoteSharingAllowed"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "viewability": viewability,
    "embeddable": embeddable,
    "publicDomain": publicDomain,
    "textToSpeechPermission": textToSpeechPermission,
    "epub": epub.toJson(),
    "pdf": pdf.toJson(),
    "webReaderLink": webReaderLink,
    "accessViewStatus": accessViewStatus,
    "quoteSharingAllowed": quoteSharingAllowed,
  };
}

class Epub {
  final bool ?isAvailable;

  Epub({
    required this.isAvailable,
  });

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
    isAvailable: json["isAvailable"],
  );

  Map<String, dynamic> toJson() => {
    "isAvailable": isAvailable,
  };
}

class Pdf {
  final bool ?isAvailable;
  final String ?acsTokenLink;

  Pdf({
    required this.isAvailable,
    required this.acsTokenLink,
  });

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
    isAvailable: json["isAvailable"],
    acsTokenLink: json["acsTokenLink"],
  );

  Map<String, dynamic> toJson() => {
    "isAvailable": isAvailable,
    "acsTokenLink": acsTokenLink,
  };
}

class SaleInfo {
  final String ?country;
  final String ?saleability;
  final bool ?isEbook;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: json["country"],
    saleability: json["saleability"],
    isEbook: json["isEbook"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "saleability": saleability,
    "isEbook": isEbook,
  };
}

class VolumeInfo {
  final String ?title;
  final String ?subtitle;
  final String ?publisher;
  final String ?publishedDate;
  final String ?description;
  final List<IndustryIdentifier> ?industryIdentifiers;
  final ReadingModes ?readingModes;
  final int ?pageCount;
  final String ?printType;
  final List<String> ?categories;
  final String ?maturityRating;
  final bool ?allowAnonLogging;
  final String ?contentVersion;
  final PanelizationSummary ?panelizationSummary;
  final ImageLinks ?imageLinks;
  final String ?language;
  final String ?previewLink;
  final String ?infoLink;
  final String ?canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    required this.subtitle,

    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json["title"],
    subtitle: json["subtitle"],
    publisher: json["publisher"],
    publishedDate: json["publishedDate"],
    description: json["description"],
    industryIdentifiers: json["industryIdentifiers"]==null?null:List<IndustryIdentifier>.from(json["industryIdentifiers"].map((x) => IndustryIdentifier.fromJson(x))),
    readingModes: ReadingModes.fromJson(json["readingModes"]??{}),
    pageCount: json["pageCount"],
    printType: json["printType"],
    categories: json["categories"]==null?null:List<String>.from(json["categories"].map((x) => x)),
    maturityRating: json["maturityRating"],
    allowAnonLogging: json["allowAnonLogging"],
    contentVersion: json["contentVersion"],
    panelizationSummary: PanelizationSummary.fromJson(json["panelizationSummary"]??{}),
    imageLinks: ImageLinks.fromJson(json["imageLinks"]??{}),
    language: json["language"],
    previewLink: json["previewLink"],
    infoLink: json["infoLink"],
    canonicalVolumeLink: json["canonicalVolumeLink"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "subtitle": subtitle,
    "publisher": publisher,
    "publishedDate": publishedDate,
    "description": description,
    "industryIdentifiers": industryIdentifiers==null?null:List<dynamic>.from(industryIdentifiers!.map((x) => x.toJson())),
    "readingModes": readingModes?.toJson(),
    "pageCount": pageCount,
    "printType": printType,
    "categories": categories==null?null:List<dynamic>.from(categories!.map((x) => x)),
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "panelizationSummary": panelizationSummary?.toJson(),
    "imageLinks": imageLinks?.toJson(),
    "language": language,
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
  };
}

class ImageLinks {
  final String ?smallThumbnail;
  final String ?thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
    smallThumbnail: json["smallThumbnail"],
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toJson() => {
    "smallThumbnail": smallThumbnail,
    "thumbnail": thumbnail,
  };
}

class IndustryIdentifier {
  final String ?type;
  final String ?identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) => IndustryIdentifier(
    type: json["type"],
    identifier: json["identifier"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "identifier": identifier,
  };
}

class PanelizationSummary {
  final bool ?containsEpubBubbles;
  final bool ?containsImageBubbles;

  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) => PanelizationSummary(
    containsEpubBubbles: json["containsEpubBubbles"],
    containsImageBubbles: json["containsImageBubbles"],
  );

  Map<String, dynamic> toJson() => {
    "containsEpubBubbles": containsEpubBubbles,
    "containsImageBubbles": containsImageBubbles,
  };
}

class ReadingModes {
  final bool ?text;
  final bool ?image;

  ReadingModes({
    required this.text,
    required this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) => ReadingModes(
    text: json["text"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "image": image,
  };
}
