#import "BHIManager.h"
#import "TikTokHeaders.h"

@implementation BHIManager
+ (BOOL)hideAds {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_ads"];
}
+ (BOOL)downloadButton {
     return [[NSUserDefaults standardUserDefaults] boolForKey:@"download_button"];
}
+ (BOOL)shareSheet {
     return [[NSUserDefaults standardUserDefaults] boolForKey:@"share_sheet"];
}
+ (BOOL)removeWatermark {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"remove_watermark"];
}
+ (BOOL)hideElementButton {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"remove_elements_button"];
}
+ (BOOL)autoPlay {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"auto_play"];
}
+ (BOOL)stopPlay {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"stop_play"];
}
+ (BOOL)progressBar {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"show_porgress_bar"];
}
+ (BOOL)showUsername {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"show_username"];
}
+ (BOOL)disablePullToRefresh {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"pull_to_refresh"];
}
+ (BOOL)disableUnsensitive {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"disable_unsensitive"];
}
+ (BOOL)disableWarnings {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"disable_warnings"];
}
+ (BOOL)disableLive {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"disable_live"];
}
+ (BOOL)skipRecommendations {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"skip_recommnedations"];
}
+ (BOOL)likeConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"like_confirm"];
}
+ (BOOL)likeCommentConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"like_comment_confirm"];
}
+ (BOOL)dislikeCommentConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"dislike_comment_confirm"];
}
+ (BOOL)followConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"follow_confirm"];
}
+ (BOOL)profileSave {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"save_profile"];
}
+ (BOOL)profileCopy {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"copy_profile_information"];
}
+ (BOOL)profileVideoCount {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"uploaded_videos"];
}
+ (BOOL)alwaysOpenSafari {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"openInBrowser"];
}
+ (BOOL)regionChangingEnabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"en_region"];
}
+ (BOOL)speedEnabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"playback_en"];
}
+ (BOOL)liveActionEnabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"en_livefunc"];
}
+ (NSNumber *)selectedLiveAction {
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"live_action"];
}
+ (NSNumber *)selectedSpeed {
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"playback_speed"];
}
+ (BOOL)videoLikeCount {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"video_like_count"];
}
+ (BOOL)videoUploadDate {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"video_upload_date"];
}
+ (NSDictionary *)selectedRegion {
    return [[NSUserDefaults standardUserDefaults] dictionaryForKey:@"region"];
}
+ (BOOL)fakeChangesEnabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"en_fake"];
}
+ (BOOL)fakeVerified {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"fake_verify"];
}
+ (BOOL)extendedBio {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"extended_bio"];
}
+ (BOOL)extendedComment {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"extendedComment"];
}
+ (BOOL)uploadHD {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"upload_hd"];
}
+ (BOOL)appLock {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"padlock"];
}
+ (void)cleanCache {
    NSArray <NSURL *> *DocumentFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:[NSURL fileURLWithPath:NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true).firstObject] includingPropertiesForKeys:@[] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
    
    for (NSURL *file in DocumentFiles) {
        if ([file.pathExtension.lowercaseString isEqualToString:@"mp4"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"png"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"jpeg"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"mp3"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"m4a"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
    }
    
    NSArray <NSURL *> *TempFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:[NSURL fileURLWithPath:NSTemporaryDirectory()] includingPropertiesForKeys:@[] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
    
    for (NSURL *file in TempFiles) {
        if ([file.pathExtension.lowercaseString isEqualToString:@"mp4"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"mov"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"tmp"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"png"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"jpeg"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"mp3"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"m4a"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file hasDirectoryPath]) {
            if ([BHIManager isEmpty:file]) {
                [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
            }
        }
    }
}
+ (BOOL)isEmpty:(NSURL *)url {
    NSArray *FolderFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:url includingPropertiesForKeys:@[] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
    if (FolderFiles.count == 0) {
        return true;
    } else {
        return false;
    }
}
+ (BOOL)hideTakoButton {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_tako_button"];
}
+ (BOOL)saveCommentMedia {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"save_comment_media"];
}
+ (BOOL)exactFollowerCount {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"exact_follower_count"];
}
+ (BOOL)copyCommentWithoutUsername {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"copy_comment_no_username"];
}
+ (BOOL)postStats {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"post_stats"];
}
+ (BOOL)translateComments {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"translate_comments"];
}
+ (BOOL)hideAIVideos {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_ai_videos"];
}
+ (BOOL)watchStoriesAnonymously {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"ghost_mode"] || [[NSUserDefaults standardUserDefaults] boolForKey:@"watch_stories_anonymously"];
}
+ (BOOL)visitProfilesPrivately {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"ghost_mode"] || [[NSUserDefaults standardUserDefaults] boolForKey:@"visit_profiles_privately"];
}
+ (BOOL)readChatsAnonymously {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"ghost_mode"] || [[NSUserDefaults standardUserDefaults] boolForKey:@"read_chats_anonymously"];
}
+ (BOOL)storyDownload {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"story_download"];
}
+ (BOOL)storyViewCount {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"story_view_count"];
}
+ (BOOL)hideTypingIndicator {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"ghost_mode"] || [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_typing_indicator"];
}
+ (BOOL)antiDeleteMessages {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"anti_delete_messages"];
}
+ (BOOL)dmDeleteConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"dm_delete_confirmation"];
}
+ (BOOL)disablePhoneBindingPopup {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"disable_phone_binding_popup"];
}
+ (BOOL)saveToVault {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"save_to_vault"];
}
+ (BOOL)saveDMMedia {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"save_dm_media"];
}
+ (BOOL)lockChats {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"lock_chats"];
}
+ (BOOL)lockFavorites {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"lock_favorites"];
}
+ (BOOL)disableFeedRefresh {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"disable_feed_refresh"];
}
+ (BOOL)exactViewCount {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"exact_view_count"];
}
+ (BOOL)confirmRepost {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"confirm_repost"];
}
+ (BOOL)confirmFavorite {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"confirm_favorite"];
}
+ (BOOL)confirmSendComment {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"confirm_send_comment"];
}
+ (BOOL)hideCaption {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_caption"];
}
+ (BOOL)hideCommentsButton {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_comments_button"];
}
+ (BOOL)hideLikesButton {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_likes_button"];
}
+ (BOOL)hideMusic {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_music"];
}
+ (BOOL)hideShareButton {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_share_button"];
}
+ (BOOL)hideSearchButton {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_search_button"];
}
+ (BOOL)fastLogout {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"fast_logout"];
}
+ (BOOL)autoClearHistory {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"auto_clear_history"];
}
+ (BOOL)hideAccountSuggestions {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_account_suggestions"];
}
+ (BOOL)persistentProgressSlider {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"persistent_progress_slider"];
}
+ (BOOL)exactTimestamp {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"exact_timestamp"];
}
+ (BOOL)blurPanels {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"blur_panels"];
}
+ (NSString *)blurPanelStyle {
    NSString *v = [[NSUserDefaults standardUserDefaults] stringForKey:@"blur_panel_style"];
    return v.length ? v : @"dark";
}
+ (CGFloat)blurPanelIntensity {
    NSString *v = [[NSUserDefaults standardUserDefaults] stringForKey:@"blur_panel_intensity"];
    return v.length ? MAX(0.0, MIN(1.0, v.doubleValue / 100.0)) : 0.75;
}
+ (CGFloat)blurPanelDim {
    NSString *v = [[NSUserDefaults standardUserDefaults] stringForKey:@"blur_panel_dim"];
    return v.length ? MAX(0.0, MIN(0.8, v.doubleValue / 100.0)) : 0.15;
}
+ (BOOL)oledMode {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"oled_mode"];
}
+ (BOOL)fasterFeedScrolling {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"faster_feed_scrolling"];
}
+ (BOOL)showOnlyFavorites {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"show_only_favorites"];
}
+ (BOOL)forceNewProfileUI {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"force_new_profile_ui"];
}
+ (BOOL)enableVoiceMessages {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"enable_voice_messages"];
}
+ (BOOL)removeAccountLimit {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"remove_account_limit"];
}
+ (BOOL)ghostMode {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"ghost_mode"];
}
+ (BOOL)hideFeedTabs {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_feed_tabs"];
}
+ (BOOL)hideTabSlotSecond {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_tab_slot_second"];
}
+ (BOOL)hideTabSlotLast {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_tab_slot_last"];
}
+ (BOOL)fullLengthComments {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"full_length_comments"];
}
+ (BOOL)customFontEnabled {
    return [self customFontName].length > 0;
}
+ (NSString *)customFontName {
    return [[NSUserDefaults standardUserDefaults] stringForKey:@"custom_font_name"];
}
+ (BOOL)profileBackgroundEnabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"profile_background_enabled"];
}
+ (BOOL)showRegionBadge {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"show_region_badge"];
}
+ (BOOL)hideLiveButton {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_live_button"];
}
+ (BOOL)hideDownloadButtonNative {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_download_button_native"];
}
+ (BOOL)enableCommentRepost {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"enable_comment_repost"];
}
+ (BOOL)hideFindSimilar {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_find_similar"];
}
+ (BOOL)hideVideoButton {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_video_button"];
}
+ (BOOL)customAccentColor {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"custom_accent_color"];
}
+ (BOOL)buttonsOnRight {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"buttons_on_right"];
}
+ (BOOL)hideElementsGlobally {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_elements_globally"];
}
+ (void)showSaveVC:(id)item {
    UIActivityViewController *acVC = [[UIActivityViewController alloc] initWithActivityItems:item applicationActivities:nil];
    if (is_iPad()) {
        acVC.popoverPresentationController.sourceView = topMostController().view;
        acVC.popoverPresentationController.sourceRect = CGRectMake(topMostController().view.bounds.size.width / 2.0, topMostController().view.bounds.size.height / 2.0, 1.0, 1.0);
    }
    [topMostController() presentViewController:acVC animated:true completion:nil];
}
+ (void)saveMedia:(id)newFilePath fileExtension:(id)fileextension {
    if ([self saveToVault]) {
        NSString *vaultDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true).firstObject stringByAppendingPathComponent:@"InfinitokVault"];
        [[NSFileManager defaultManager] createDirectoryAtPath:vaultDir withIntermediateDirectories:true attributes:nil error:nil];
        NSString *vaultFileName = [NSString stringWithFormat:@"%@.%@", NSUUID.UUID.UUIDString, fileextension];
        NSString *vaultFilePath = [vaultDir stringByAppendingPathComponent:vaultFileName];
        [[NSFileManager defaultManager] copyItemAtPath:[(NSURL *)newFilePath path] toPath:vaultFilePath error:nil];
    }
    NSArray *imageExtensions = @[@"png", @"jpg", @"jpeg", @"gif", @"tiff", @"bmp", @"heif", @"heic", @"svg"];
    NSArray *videoExtensions = @[@"mp4", @"mov", @"avi", @"mkv", @"wmv", @"flv", @"webm"];
    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
        PHAssetResourceCreationOptions *options = [[PHAssetResourceCreationOptions alloc] init];
        if ([videoExtensions containsObject:fileextension]) {
            [[PHAssetCreationRequest creationRequestForAsset] addResourceWithType:PHAssetResourceTypeVideo fileURL:newFilePath options:options];
        } else if ([imageExtensions containsObject:fileextension]) {
            [[PHAssetCreationRequest creationRequestForAsset] addResourceWithType:PHAssetResourceTypePhoto fileURL:newFilePath options:options];
        } else {
            NSLog(@"Unsupported file type: %@", fileextension);
        }
    } completionHandler:^(BOOL success, NSError * _Nullable error) {
        if (success) {
            NSLog(@"Media saved to Camera Roll successfully.");
        } else {
            NSLog(@"Error saving media to Camera Roll: %@", error);
        }
    }];
}

+ (NSString *)getDownloadingPersent:(float)per {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterPercentStyle];
    NSNumber *number = [NSNumber numberWithFloat:per];
    return [numberFormatter stringFromNumber:number];
}
@end