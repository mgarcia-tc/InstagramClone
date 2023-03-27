
UserName userNameFromJson(Map<String, dynamic> str) => UserName.fromJson(str);

class UserName {
  UserName({
    this.data,
    this.status,
  });

  Data? data;
  String? status;

  factory UserName.fromJson(Map<String, dynamic> json) => UserName(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        status: json["status"],
      );
}

class Data {
  Data({
    this.user,
  });

  DataUser? user;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json["user"] == null ? null : DataUser.fromJson(json["user"]),
      );
}

class DataUser {
  DataUser({
    this.biography,
    this.bioLinks,
    this.biographyWithEntities,
    this.blockedByViewer,
    this.restrictedByViewer,
    this.countryBlock,
    this.externalUrl,
    this.externalUrlLinkshimmed,
    this.edgeFollowedBy,
    this.fbid,
    this.followedByViewer,
    this.edgeFollow,
    this.followsViewer,
    this.fullName,
    this.groupMetadata,
    this.hasArEffects,
    this.hasClips,
    this.hasGuides,
    this.hasChannel,
    this.hasBlockedViewer,
    this.highlightReelCount,
    this.hasRequestedViewer,
    this.hideLikeAndViewCounts,
    this.id,
    this.isBusinessAccount,
    this.isProfessionalAccount,
    this.isSupervisionEnabled,
    this.isGuardianOfViewer,
    this.isSupervisedByViewer,
    this.isSupervisedUser,
    this.isEmbedsDisabled,
    this.isJoinedRecently,
    this.guardianId,
    this.businessAddressJson,
    this.businessContactMethod,
    this.businessEmail,
    this.businessPhoneNumber,
    this.businessCategoryName,
    this.overallCategoryName,
    this.categoryEnum,
    this.categoryName,
    this.isPrivate,
    this.isVerified,
    this.edgeMutualFollowedBy,
    this.profilePicUrl,
    this.profilePicUrlHd,
    this.requestedByViewer,
    this.shouldShowCategory,
    this.shouldShowPublicContacts,
    this.showAccountTransparencyDetails,
    this.transparencyLabel,
    this.transparencyProduct,
    this.username,
    this.connectedFbPage,
    this.pronouns,
    this.edgeFelixVideoTimeline,
    this.edgeOwnerToTimelineMedia,
    this.edgeSavedMedia,
    this.edgeMediaCollections,
    this.edgeRelatedProfiles,
  });

  String? biography;
  List<BioLink>? bioLinks;
  BiographyWithEntities? biographyWithEntities;
  bool? blockedByViewer;
  dynamic restrictedByViewer;
  bool? countryBlock;
  String? externalUrl;
  String? externalUrlLinkshimmed;
  EdgeFollowClass? edgeFollowedBy;
  String? fbid;
  bool? followedByViewer;
  EdgeFollowClass? edgeFollow;
  bool? followsViewer;
  String? fullName;
  dynamic groupMetadata;
  bool? hasArEffects;
  bool? hasClips;
  bool? hasGuides;
  bool? hasChannel;
  bool? hasBlockedViewer;
  int? highlightReelCount;
  bool? hasRequestedViewer;
  bool? hideLikeAndViewCounts;
  String? id;
  bool? isBusinessAccount;
  bool? isProfessionalAccount;
  bool? isSupervisionEnabled;
  bool? isGuardianOfViewer;
  bool? isSupervisedByViewer;
  bool? isSupervisedUser;
  bool? isEmbedsDisabled;
  bool? isJoinedRecently;
  dynamic guardianId;
  dynamic businessAddressJson;
  String? businessContactMethod;
  dynamic businessEmail;
  dynamic businessPhoneNumber;
  String? businessCategoryName;
  dynamic overallCategoryName;
  String? categoryEnum;
  String? categoryName;
  bool? isPrivate;
  bool? isVerified;
  EdgeMutualFollowedBy? edgeMutualFollowedBy;
  String? profilePicUrl;
  String? profilePicUrlHd;
  bool? requestedByViewer;
  bool? shouldShowCategory;
  bool? shouldShowPublicContacts;
  dynamic showAccountTransparencyDetails;
  dynamic transparencyLabel;
  String? transparencyProduct;
  Username? username;
  dynamic connectedFbPage;
  List<dynamic>? pronouns;
  EdgeFelixVideoTimelineClass? edgeFelixVideoTimeline;
  EdgeFelixVideoTimelineClass? edgeOwnerToTimelineMedia;
  EdgeFelixVideoTimelineClass? edgeSavedMedia;
  EdgeFelixVideoTimelineClass? edgeMediaCollections;
  EdgeRelatedProfiles? edgeRelatedProfiles;

  factory DataUser.fromJson(Map<String, dynamic> json) => DataUser(
        biography: json["biography"],
        bioLinks: json["bio_links"] == null
            ? []
            : List<BioLink>.from(
                json["bio_links"]!.map((x) => BioLink.fromJson(x))),
        biographyWithEntities: json["biography_with_entities"] == null
            ? null
            : BiographyWithEntities.fromJson(json["biography_with_entities"]),
        blockedByViewer: json["blocked_by_viewer"],
        restrictedByViewer: json["restricted_by_viewer"],
        countryBlock: json["country_block"],
        externalUrl: json["external_url"],
        externalUrlLinkshimmed: json["external_url_linkshimmed"],
        edgeFollowedBy: json["edge_followed_by"] == null
            ? null
            : EdgeFollowClass.fromJson(json["edge_followed_by"]),
        fbid: json["fbid"],
        followedByViewer: json["followed_by_viewer"],
        edgeFollow: json["edge_follow"] == null
            ? null
            : EdgeFollowClass.fromJson(json["edge_follow"]),
        followsViewer: json["follows_viewer"],
        fullName: json["full_name"],
        groupMetadata: json["group_metadata"],
        hasArEffects: json["has_ar_effects"],
        hasClips: json["has_clips"],
        hasGuides: json["has_guides"],
        hasChannel: json["has_channel"],
        hasBlockedViewer: json["has_blocked_viewer"],
        highlightReelCount: json["highlight_reel_count"],
        hasRequestedViewer: json["has_requested_viewer"],
        hideLikeAndViewCounts: json["hide_like_and_view_counts"],
        id: json["id"],
        isBusinessAccount: json["is_business_account"],
        isProfessionalAccount: json["is_professional_account"],
        isSupervisionEnabled: json["is_supervision_enabled"],
        isGuardianOfViewer: json["is_guardian_of_viewer"],
        isSupervisedByViewer: json["is_supervised_by_viewer"],
        isSupervisedUser: json["is_supervised_user"],
        isEmbedsDisabled: json["is_embeds_disabled"],
        isJoinedRecently: json["is_joined_recently"],
        guardianId: json["guardian_id"],
        businessAddressJson: json["business_address_json"],
        businessContactMethod: json["business_contact_method"],
        businessEmail: json["business_email"],
        businessPhoneNumber: json["business_phone_number"],
        businessCategoryName: json["business_category_name"],
        overallCategoryName: json["overall_category_name"],
        categoryEnum: json["category_enum"],
        categoryName: json["category_name"],
        isPrivate: json["is_private"],
        isVerified: json["is_verified"],
        edgeMutualFollowedBy: json["edge_mutual_followed_by"] == null
            ? null
            : EdgeMutualFollowedBy.fromJson(json["edge_mutual_followed_by"]),
        profilePicUrl: json["profile_pic_url"],
        profilePicUrlHd: json["profile_pic_url_hd"],
        requestedByViewer: json["requested_by_viewer"],
        shouldShowCategory: json["should_show_category"],
        shouldShowPublicContacts: json["should_show_public_contacts"],
        showAccountTransparencyDetails:
            json["show_account_transparency_details"],
        transparencyLabel: json["transparency_label"],
        transparencyProduct: json["transparency_product"],
        username: usernameValues.map[json["username"]]!,
        connectedFbPage: json["connected_fb_page"],
        pronouns: json["pronouns"] == null
            ? []
            : List<dynamic>.from(json["pronouns"]!.map((x) => x)),
        edgeFelixVideoTimeline: json["edge_felix_video_timeline"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromJson(
                json["edge_felix_video_timeline"]),
        edgeOwnerToTimelineMedia: json["edge_owner_to_timeline_media"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromJson(
                json["edge_owner_to_timeline_media"]),
        edgeSavedMedia: json["edge_saved_media"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromJson(json["edge_saved_media"]),
        edgeMediaCollections: json["edge_media_collections"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromJson(
                json["edge_media_collections"]),
        edgeRelatedProfiles: json["edge_related_profiles"] == null
            ? null
            : EdgeRelatedProfiles.fromJson(json["edge_related_profiles"]),
      );
}

class BioLink {
  BioLink({
    this.title,
    this.lynxUrl,
    this.url,
    this.linkType,
  });

  String? title;
  String? lynxUrl;
  String? url;
  String? linkType;

  factory BioLink.fromJson(Map<String, dynamic> json) => BioLink(
        title: json["title"],
        lynxUrl: json["lynx_url"],
        url: json["url"],
        linkType: json["link_type"],
      );
}

class BiographyWithEntities {
  BiographyWithEntities({
    this.rawText,
    this.entities,
  });

  String? rawText;
  List<Entity>? entities;

  factory BiographyWithEntities.fromJson(Map<String, dynamic> json) =>
      BiographyWithEntities(
        rawText: json["raw_text"],
        entities: json["entities"] == null
            ? []
            : List<Entity>.from(
                json["entities"]!.map((x) => Entity.fromJson(x))),
      );
}

class Entity {
  Entity({
    this.user,
    this.hashtag,
  });

  EntityUser? user;
  dynamic hashtag;

  factory Entity.fromJson(Map<String, dynamic> json) => Entity(
        user: json["user"] == null ? null : EntityUser.fromJson(json["user"]),
        hashtag: json["hashtag"],
      );
}

class EntityUser {
  EntityUser({
    this.username,
  });

  String? username;

  factory EntityUser.fromJson(Map<String, dynamic> json) => EntityUser(
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
      };
}

class EdgeFelixVideoTimelineClass {
  EdgeFelixVideoTimelineClass({
    this.count,
    this.pageInfo,
    this.edges,
  });

  int? count;
  PageInfo? pageInfo;
  List<EdgeFelixVideoTimelineEdge>? edges;

  factory EdgeFelixVideoTimelineClass.fromJson(Map<String, dynamic> json) =>
      EdgeFelixVideoTimelineClass(
        count: json["count"],
        pageInfo: json["page_info"] == null
            ? null
            : PageInfo.fromJson(json["page_info"]),
        edges: json["edges"] == null
            ? []
            : List<EdgeFelixVideoTimelineEdge>.from(json["edges"]!
                .map((x) => EdgeFelixVideoTimelineEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "page_info": pageInfo?.toJson(),
        "edges": edges == null
            ? []
            : List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class EdgeFelixVideoTimelineEdge {
  EdgeFelixVideoTimelineEdge({
    this.node,
  });

  PurpleNode? node;

  factory EdgeFelixVideoTimelineEdge.fromJson(Map<String, dynamic> json) =>
      EdgeFelixVideoTimelineEdge(
        node: json["node"] == null ? null : PurpleNode.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
      };
}

class PurpleNode {
  PurpleNode({
    this.typename,
    this.id,
    this.shortcode,
    this.dimensions,
    this.displayUrl,
    this.edgeMediaToTaggedUser,
    this.factCheckOverallRating,
    this.factCheckInformation,
    this.gatingInfo,
    this.sharingFrictionInfo,
    this.mediaOverlayInfo,
    this.mediaPreview,
    this.owner,
    this.isVideo,
    this.hasUpcomingEvent,
    this.accessibilityCaption,
    this.dashInfo,
    this.hasAudio,
    this.trackingToken,
    this.videoUrl,
    this.videoViewCount,
    this.edgeMediaToCaption,
    this.edgeMediaToComment,
    this.commentsDisabled,
    this.takenAtTimestamp,
    this.edgeLikedBy,
    this.edgeMediaPreviewLike,
    this.location,
    this.nftAssetInfo,
    this.thumbnailSrc,
    this.thumbnailResources,
    this.felixProfileGridCrop,
    this.coauthorProducers,
    this.pinnedForUsers,
    this.viewerCanReshare,
    this.encodingStatus,
    this.isPublished,
    this.title,
    this.videoDuration,
    this.clipsMusicAttributionInfo,
    this.edgeSidecarToChildren,
  });

  Typename? typename;
  String? id;
  String? shortcode;
  Dimensions? dimensions;
  String? displayUrl;
  EdgeMediaToTaggedUser? edgeMediaToTaggedUser;
  dynamic factCheckOverallRating;
  dynamic factCheckInformation;
  dynamic gatingInfo;
  SharingFrictionInfo? sharingFrictionInfo;
  dynamic mediaOverlayInfo;
  String? mediaPreview;
  Owner? owner;
  bool? isVideo;
  bool? hasUpcomingEvent;
  dynamic accessibilityCaption;
  DashInfo? dashInfo;
  bool? hasAudio;
  String? trackingToken;
  String? videoUrl;
  int? videoViewCount;
  EdgeMediaToCaption? edgeMediaToCaption;
  EdgeFollowClass? edgeMediaToComment;
  bool? commentsDisabled;
  int? takenAtTimestamp;
  EdgeFollowClass? edgeLikedBy;
  EdgeFollowClass? edgeMediaPreviewLike;
  Location? location;
  dynamic nftAssetInfo;
  String? thumbnailSrc;
  List<ThumbnailResource>? thumbnailResources;
  dynamic felixProfileGridCrop;
  List<dynamic>? coauthorProducers;
  List<dynamic>? pinnedForUsers;
  bool? viewerCanReshare;
  dynamic encodingStatus;
  bool? isPublished;
  String? title;
  double? videoDuration;
  ClipsMusicAttributionInfo? clipsMusicAttributionInfo;
  EdgeSidecarToChildren? edgeSidecarToChildren;

  factory PurpleNode.fromJson(Map<String, dynamic> json) => PurpleNode(
        typename: typenameValues.map[json["__typename"]]!,
        id: json["id"],
        shortcode: json["shortcode"],
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromJson(json["dimensions"]),
        displayUrl: json["display_url"],
        edgeMediaToTaggedUser: json["edge_media_to_tagged_user"] == null
            ? null
            : EdgeMediaToTaggedUser.fromJson(json["edge_media_to_tagged_user"]),
        factCheckOverallRating: json["fact_check_overall_rating"],
        factCheckInformation: json["fact_check_information"],
        gatingInfo: json["gating_info"],
        sharingFrictionInfo: json["sharing_friction_info"] == null
            ? null
            : SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        mediaOverlayInfo: json["media_overlay_info"],
        mediaPreview: json["media_preview"],
        owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
        isVideo: json["is_video"],
        hasUpcomingEvent: json["has_upcoming_event"],
        accessibilityCaption: json["accessibility_caption"],
        dashInfo: json["dash_info"] == null
            ? null
            : DashInfo.fromJson(json["dash_info"]),
        hasAudio: json["has_audio"],
        trackingToken: json["tracking_token"],
        videoUrl: json["video_url"],
        videoViewCount: json["video_view_count"],
        edgeMediaToCaption: json["edge_media_to_caption"] == null
            ? null
            : EdgeMediaToCaption.fromJson(json["edge_media_to_caption"]),
        edgeMediaToComment: json["edge_media_to_comment"] == null
            ? null
            : EdgeFollowClass.fromJson(json["edge_media_to_comment"]),
        commentsDisabled: json["comments_disabled"],
        takenAtTimestamp: json["taken_at_timestamp"],
        edgeLikedBy: json["edge_liked_by"] == null
            ? null
            : EdgeFollowClass.fromJson(json["edge_liked_by"]),
        edgeMediaPreviewLike: json["edge_media_preview_like"] == null
            ? null
            : EdgeFollowClass.fromJson(json["edge_media_preview_like"]),
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        nftAssetInfo: json["nft_asset_info"],
        thumbnailSrc: json["thumbnail_src"],
        thumbnailResources: json["thumbnail_resources"] == null
            ? []
            : List<ThumbnailResource>.from(json["thumbnail_resources"]!
                .map((x) => ThumbnailResource.fromJson(x))),
        felixProfileGridCrop: json["felix_profile_grid_crop"],
        coauthorProducers: json["coauthor_producers"] == null
            ? []
            : List<dynamic>.from(json["coauthor_producers"]!.map((x) => x)),
        pinnedForUsers: json["pinned_for_users"] == null
            ? []
            : List<dynamic>.from(json["pinned_for_users"]!.map((x) => x)),
        viewerCanReshare: json["viewer_can_reshare"],
        encodingStatus: json["encoding_status"],
        isPublished: json["is_published"],
        title: json["title"],
        videoDuration: json["video_duration"]?.toDouble(),
        clipsMusicAttributionInfo: json["clips_music_attribution_info"] == null
            ? null
            : ClipsMusicAttributionInfo.fromJson(
                json["clips_music_attribution_info"]),
        edgeSidecarToChildren: json["edge_sidecar_to_children"] == null
            ? null
            : EdgeSidecarToChildren.fromJson(json["edge_sidecar_to_children"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typenameValues.reverse[typename],
        "id": id,
        "shortcode": shortcode,
        "dimensions": dimensions?.toJson(),
        "display_url": displayUrl,
        "edge_media_to_tagged_user": edgeMediaToTaggedUser?.toJson(),
        "fact_check_overall_rating": factCheckOverallRating,
        "fact_check_information": factCheckInformation,
        "gating_info": gatingInfo,
        "sharing_friction_info": sharingFrictionInfo?.toJson(),
        "media_overlay_info": mediaOverlayInfo,
        "media_preview": mediaPreview,
        "owner": owner?.toJson(),
        "is_video": isVideo,
        "has_upcoming_event": hasUpcomingEvent,
        "accessibility_caption": accessibilityCaption,
        "dash_info": dashInfo?.toJson(),
        "has_audio": hasAudio,
        "tracking_token": trackingToken,
        "video_url": videoUrl,
        "video_view_count": videoViewCount,
        "edge_media_to_caption": edgeMediaToCaption?.toJson(),
        "edge_media_to_comment": edgeMediaToComment?.toJson(),
        "comments_disabled": commentsDisabled,
        "taken_at_timestamp": takenAtTimestamp,
        "edge_liked_by": edgeLikedBy?.toJson(),
        "edge_media_preview_like": edgeMediaPreviewLike?.toJson(),
        "location": location?.toJson(),
        "nft_asset_info": nftAssetInfo,
        "thumbnail_src": thumbnailSrc,
        "thumbnail_resources": thumbnailResources == null
            ? []
            : List<dynamic>.from(thumbnailResources!.map((x) => x.toJson())),
        "felix_profile_grid_crop": felixProfileGridCrop,
        "coauthor_producers": coauthorProducers == null
            ? []
            : List<dynamic>.from(coauthorProducers!.map((x) => x)),
        "pinned_for_users": pinnedForUsers == null
            ? []
            : List<dynamic>.from(pinnedForUsers!.map((x) => x)),
        "viewer_can_reshare": viewerCanReshare,
        "encoding_status": encodingStatus,
        "is_published": isPublished,
        "title": title,
        "video_duration": videoDuration,
        "clips_music_attribution_info": clipsMusicAttributionInfo?.toJson(),
        "edge_sidecar_to_children": edgeSidecarToChildren?.toJson(),
      };
}

class ClipsMusicAttributionInfo {
  ClipsMusicAttributionInfo({
    this.artistName,
    this.songName,
    this.usesOriginalAudio,
    this.shouldMuteAudio,
    this.shouldMuteAudioReason,
    this.audioId,
  });

  String? artistName;
  String? songName;
  bool? usesOriginalAudio;
  bool? shouldMuteAudio;
  String? shouldMuteAudioReason;
  String? audioId;

  factory ClipsMusicAttributionInfo.fromJson(Map<String, dynamic> json) =>
      ClipsMusicAttributionInfo(
        artistName: json["artist_name"],
        songName: json["song_name"],
        usesOriginalAudio: json["uses_original_audio"],
        shouldMuteAudio: json["should_mute_audio"],
        shouldMuteAudioReason: json["should_mute_audio_reason"],
        audioId: json["audio_id"],
      );

  Map<String, dynamic> toJson() => {
        "artist_name": artistName,
        "song_name": songName,
        "uses_original_audio": usesOriginalAudio,
        "should_mute_audio": shouldMuteAudio,
        "should_mute_audio_reason": shouldMuteAudioReason,
        "audio_id": audioId,
      };
}

class DashInfo {
  DashInfo({
    this.isDashEligible,
    this.videoDashManifest,
    this.numberOfQualities,
  });

  bool? isDashEligible;
  dynamic videoDashManifest;
  int? numberOfQualities;

  factory DashInfo.fromJson(Map<String, dynamic> json) => DashInfo(
        isDashEligible: json["is_dash_eligible"],
        videoDashManifest: json["video_dash_manifest"],
        numberOfQualities: json["number_of_qualities"],
      );

  Map<String, dynamic> toJson() => {
        "is_dash_eligible": isDashEligible,
        "video_dash_manifest": videoDashManifest,
        "number_of_qualities": numberOfQualities,
      };
}

class Dimensions {
  Dimensions({
    this.height,
    this.width,
  });

  int? height;
  int? width;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        height: json["height"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
      };
}

class EdgeFollowClass {
  EdgeFollowClass({
    this.count,
  });

  int? count;

  factory EdgeFollowClass.fromJson(Map<String, dynamic> json) =>
      EdgeFollowClass(
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
      };
}

class EdgeMediaToCaption {
  EdgeMediaToCaption({
    this.edges,
  });

  List<EdgeMediaToCaptionEdge>? edges;

  factory EdgeMediaToCaption.fromJson(Map<String, dynamic> json) =>
      EdgeMediaToCaption(
        edges: json["edges"] == null
            ? []
            : List<EdgeMediaToCaptionEdge>.from(
                json["edges"]!.map((x) => EdgeMediaToCaptionEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": edges == null
            ? []
            : List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class EdgeMediaToCaptionEdge {
  EdgeMediaToCaptionEdge({
    this.node,
  });

  FluffyNode? node;

  factory EdgeMediaToCaptionEdge.fromJson(Map<String, dynamic> json) =>
      EdgeMediaToCaptionEdge(
        node: json["node"] == null ? null : FluffyNode.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
      };
}

class FluffyNode {
  FluffyNode({
    this.text,
  });

  String? text;

  factory FluffyNode.fromJson(Map<String, dynamic> json) => FluffyNode(
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
      };
}

class EdgeMediaToTaggedUser {
  EdgeMediaToTaggedUser({
    this.edges,
  });

  List<EdgeMediaToTaggedUserEdge>? edges;

  factory EdgeMediaToTaggedUser.fromJson(Map<String, dynamic> json) =>
      EdgeMediaToTaggedUser(
        edges: json["edges"] == null
            ? []
            : List<EdgeMediaToTaggedUserEdge>.from(json["edges"]!
                .map((x) => EdgeMediaToTaggedUserEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": edges == null
            ? []
            : List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class EdgeMediaToTaggedUserEdge {
  EdgeMediaToTaggedUserEdge({
    this.node,
  });

  TentacledNode? node;

  factory EdgeMediaToTaggedUserEdge.fromJson(Map<String, dynamic> json) =>
      EdgeMediaToTaggedUserEdge(
        node:
            json["node"] == null ? null : TentacledNode.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
      };
}

class TentacledNode {
  TentacledNode({
    this.user,
    this.x,
    this.y,
  });

  UserClass? user;
  double? x;
  double? y;

  factory TentacledNode.fromJson(Map<String, dynamic> json) => TentacledNode(
        user: json["user"] == null ? null : UserClass.fromJson(json["user"]),
        x: json["x"]?.toDouble(),
        y: json["y"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
        "x": x,
        "y": y,
      };
}

class UserClass {
  UserClass({
    this.fullName,
    this.followedByViewer,
    this.id,
    this.isVerified,
    this.profilePicUrl,
    this.username,
    this.isPrivate,
  });

  String? fullName;
  bool? followedByViewer;
  String? id;
  bool? isVerified;
  String? profilePicUrl;
  String? username;
  bool? isPrivate;

  factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        fullName: json["full_name"],
        followedByViewer: json["followed_by_viewer"],
        id: json["id"],
        isVerified: json["is_verified"],
        profilePicUrl: json["profile_pic_url"],
        username: json["username"],
        isPrivate: json["is_private"],
      );

  Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "followed_by_viewer": followedByViewer,
        "id": id,
        "is_verified": isVerified,
        "profile_pic_url": profilePicUrl,
        "username": username,
        "is_private": isPrivate,
      };
}

class EdgeSidecarToChildren {
  EdgeSidecarToChildren({
    this.edges,
  });

  List<EdgeSidecarToChildrenEdge>? edges;

  factory EdgeSidecarToChildren.fromJson(Map<String, dynamic> json) =>
      EdgeSidecarToChildren(
        edges: json["edges"] == null
            ? []
            : List<EdgeSidecarToChildrenEdge>.from(json["edges"]!
                .map((x) => EdgeSidecarToChildrenEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": edges == null
            ? []
            : List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class EdgeSidecarToChildrenEdge {
  EdgeSidecarToChildrenEdge({
    this.node,
  });

  StickyNode? node;

  factory EdgeSidecarToChildrenEdge.fromJson(Map<String, dynamic> json) =>
      EdgeSidecarToChildrenEdge(
        node: json["node"] == null ? null : StickyNode.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
      };
}

class StickyNode {
  StickyNode({
    this.typename,
    this.id,
    this.shortcode,
    this.dimensions,
    this.displayUrl,
    this.edgeMediaToTaggedUser,
    this.factCheckOverallRating,
    this.factCheckInformation,
    this.gatingInfo,
    this.sharingFrictionInfo,
    this.mediaOverlayInfo,
    this.mediaPreview,
    this.owner,
    this.isVideo,
    this.hasUpcomingEvent,
    this.accessibilityCaption,
  });

  Typename? typename;
  String? id;
  String? shortcode;
  Dimensions? dimensions;
  String? displayUrl;
  EdgeMediaToTaggedUser? edgeMediaToTaggedUser;
  dynamic factCheckOverallRating;
  dynamic factCheckInformation;
  dynamic gatingInfo;
  SharingFrictionInfo? sharingFrictionInfo;
  dynamic mediaOverlayInfo;
  String? mediaPreview;
  Owner? owner;
  bool? isVideo;
  bool? hasUpcomingEvent;
  dynamic accessibilityCaption;

  factory StickyNode.fromJson(Map<String, dynamic> json) => StickyNode(
        typename: typenameValues.map[json["__typename"]]!,
        id: json["id"],
        shortcode: json["shortcode"],
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromJson(json["dimensions"]),
        displayUrl: json["display_url"],
        edgeMediaToTaggedUser: json["edge_media_to_tagged_user"] == null
            ? null
            : EdgeMediaToTaggedUser.fromJson(json["edge_media_to_tagged_user"]),
        factCheckOverallRating: json["fact_check_overall_rating"],
        factCheckInformation: json["fact_check_information"],
        gatingInfo: json["gating_info"],
        sharingFrictionInfo: json["sharing_friction_info"] == null
            ? null
            : SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        mediaOverlayInfo: json["media_overlay_info"],
        mediaPreview: json["media_preview"],
        owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
        isVideo: json["is_video"],
        hasUpcomingEvent: json["has_upcoming_event"],
        accessibilityCaption: json["accessibility_caption"],
      );

  Map<String, dynamic> toJson() => {
        "__typename": typenameValues.reverse[typename],
        "id": id,
        "shortcode": shortcode,
        "dimensions": dimensions?.toJson(),
        "display_url": displayUrl,
        "edge_media_to_tagged_user": edgeMediaToTaggedUser?.toJson(),
        "fact_check_overall_rating": factCheckOverallRating,
        "fact_check_information": factCheckInformation,
        "gating_info": gatingInfo,
        "sharing_friction_info": sharingFrictionInfo?.toJson(),
        "media_overlay_info": mediaOverlayInfo,
        "media_preview": mediaPreview,
        "owner": owner?.toJson(),
        "is_video": isVideo,
        "has_upcoming_event": hasUpcomingEvent,
        "accessibility_caption": accessibilityCaption,
      };
}

class Owner {
  Owner({
    this.id,
    this.username,
  });

  String? id;
  Username? username;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        id: json["id"],
        username: usernameValues.map[json["username"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": usernameValues.reverse[username],
      };
}

enum Username { TAMMY_PARRA }

final usernameValues = EnumValues({"tammy.parra": Username.TAMMY_PARRA});

class SharingFrictionInfo {
  SharingFrictionInfo({
    this.shouldHaveSharingFriction,
    this.bloksAppUrl,
  });

  bool? shouldHaveSharingFriction;
  dynamic bloksAppUrl;

  factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) =>
      SharingFrictionInfo(
        shouldHaveSharingFriction: json["should_have_sharing_friction"],
        bloksAppUrl: json["bloks_app_url"],
      );

  Map<String, dynamic> toJson() => {
        "should_have_sharing_friction": shouldHaveSharingFriction,
        "bloks_app_url": bloksAppUrl,
      };
}

enum Typename { GRAPH_VIDEO, GRAPH_SIDECAR, GRAPH_IMAGE }

final typenameValues = EnumValues({
  "GraphImage": Typename.GRAPH_IMAGE,
  "GraphSidecar": Typename.GRAPH_SIDECAR,
  "GraphVideo": Typename.GRAPH_VIDEO
});

class Location {
  Location({
    this.id,
    this.hasPublicPage,
    this.name,
    this.slug,
  });

  String? id;
  bool? hasPublicPage;
  String? name;
  String? slug;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        hasPublicPage: json["has_public_page"],
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "has_public_page": hasPublicPage,
        "name": name,
        "slug": slug,
      };
}

enum ProductType { IGTV, CLIPS }

final productTypeValues =
    EnumValues({"clips": ProductType.CLIPS, "igtv": ProductType.IGTV});

class ThumbnailResource {
  ThumbnailResource({
    this.src,
    this.configWidth,
    this.configHeight,
  });

  String? src;
  int? configWidth;
  int? configHeight;

  factory ThumbnailResource.fromJson(Map<String, dynamic> json) =>
      ThumbnailResource(
        src: json["src"],
        configWidth: json["config_width"],
        configHeight: json["config_height"],
      );

  Map<String, dynamic> toJson() => {
        "src": src,
        "config_width": configWidth,
        "config_height": configHeight,
      };
}

class PageInfo {
  PageInfo({
    this.hasNextPage,
    this.endCursor,
  });

  bool? hasNextPage;
  String? endCursor;

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        hasNextPage: json["has_next_page"],
        endCursor: json["end_cursor"],
      );

  Map<String, dynamic> toJson() => {
        "has_next_page": hasNextPage,
        "end_cursor": endCursor,
      };
}

class EdgeMutualFollowedBy {
  EdgeMutualFollowedBy({
    this.count,
    this.edges,
  });

  int? count;
  List<dynamic>? edges;

  factory EdgeMutualFollowedBy.fromJson(Map<String, dynamic> json) =>
      EdgeMutualFollowedBy(
        count: json["count"],
        edges: json["edges"] == null
            ? []
            : List<dynamic>.from(json["edges"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "edges": edges == null ? [] : List<dynamic>.from(edges!.map((x) => x)),
      };
}

class EdgeRelatedProfiles {
  EdgeRelatedProfiles({
    this.edges,
  });

  List<EdgeRelatedProfilesEdge>? edges;

  factory EdgeRelatedProfiles.fromJson(Map<String, dynamic> json) =>
      EdgeRelatedProfiles(
        edges: json["edges"] == null
            ? []
            : List<EdgeRelatedProfilesEdge>.from(
                json["edges"]!.map((x) => EdgeRelatedProfilesEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": edges == null
            ? []
            : List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class EdgeRelatedProfilesEdge {
  EdgeRelatedProfilesEdge({
    this.node,
  });

  UserClass? node;

  factory EdgeRelatedProfilesEdge.fromJson(Map<String, dynamic> json) =>
      EdgeRelatedProfilesEdge(
        node: json["node"] == null ? null : UserClass.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
