//
//  Messages.swift
//  ISIT
//
//  Created by Jitendra on 22/11/21.
//  Copyright © 2020 Jitendra. All rights reserved.
//

import Foundation


enum Messages {
    
    struct account {
        
        static let enterEmail = "Please enter email address."
        static let invalidEmail = "Please enter valid email address."
        static let enterPassword = "Please enter password."
        static let enterConfirmPassword = "​Please confirm your new password."
        static let enterStrongPassword = "The password should be at least 8 characters long, and must contain an uppercase character, a lowercase character, a number and a special character."
        static let passwordNotMatch = "Your confirm password does not match."
        static let enterOldPassword = "Please enter current password."

        static let enterFirstName = "Please enter your first name."
        static let enterValidFirstName = "Please enter atleast _ characters in first name."

        static let enterLastName = "Please enter your last name."
        static let enterValidLastName = "Please enter atleast _ characters in last name."

        static let enterCode = "Please enter received code."
        static let enterValidCode = "Please check the entered code."
        
        static let acceptAgreement = "​Please agree to terms & conditions and privacy policy."
        static let cancelSignupConfirm = "​All information will be lost, Are you sure you want to discard changes?"

        static let confirmLogout = "Are you sure you want to logout?"

        static let selectCountryCode = "Please select country code."
        static let enterValidPhoneNumber = "Please enter _ characters in phone number."
        static let enterBio = "Please enter bio."
        static let enterValidBio = "Please enter atleast _ characters in bio."

        static let selectProfilePic = "Please select profile picture."

        
        static let enablePublicProfile = "Are you sure you want to make your profile public?"
        static let enablePrivateProfile = "Are you sure you want to make your profile private?"
        
        static let blocked = "You have blocked this user!"
        static let youHaveBeenBlocked = "Profile is not available."

        static let confirmAccountDelete = "Are you sure you want to delete your account?"
        static let confirmDataLoseOnDelete = "All the data will get cleared and you won't be able to retrieve it back. Still want to delete account?"

    }

    
    struct post {
        
        static let enterHeading = "Please enter heading."
        static let invalidHeading = "Please enter atleast _ characters in heading."
        
        static let enterDescription = "Please enter description."
        static let invalidDescription = "Please enter atleast _ characters in description."
        
        static let selectCategory = "Please select category."
        static let selectCountry = "Please select country."

        static let enterCity = "Please enter city."
        static let invalidCity = "Please enter atleast _ characters in city."
        
        static let enterZip = "Please enter zipcode."
        static let invalidZip = "Please enter atleast _ characters in zipcode."
        
        static let enterAnointedDetails = "Please enter anointed details."
        static let invalidAnointedDetails = "Please enter atleast _ characters in anointed details."
        
        static let loadFromDraft = "Do you want to load post from draft?"
        static let failedToUploadSomeMedia = "Some of the media has failed to save."
        static let postCreated = "Post created successfully!"
        
        static let reloadingPost = "Reloading Posts"
        static let reloadingComments = "Reloading Comments"
        static let reloadingReplies = "Reloading Replies"
        static let reloadingNotifications = "Reloading Notifications"

        static let cancelPostCreation = "​All information will be lost, Are you sure you want to discard changes?"

        static let deleteMedia = "Are you sure you want to delete the media?"
        
        static let confirmDeletePost = "Are you sure you want to delete Post?"
        static let confirmBlockUser = "Are you sure you want to block this user?"

        static let enterComment = "Please enter comment."
        static let enterReply = "Please enter reply."

        
    }
    
    
    struct notFound {
        static let noDataFound = "No data found."
        static let noPostFound = "No post found."
        static let noUserFound = "No user found."
        static let noCommentFound = "No comment found."
        static let noRequestFound = "No request found."
        static let noReplyFound = "No reply found."
        static let noResultFound = "No result found."
        static let noProductFound = "No product found."
        static let noEventFound = "No event found."
        static let noMessageFound = "No message found."
        static let noNotificationFound = "No notification found."

        static let privateAccount = "This account is private."

        static let network = "Please check your internet connection."
        static let failedMediaUpNetworkIssue = "Failed to upload media.\nPlease check your internet connection."
        static let networkDisconnected = "Seems like your internet have disconnected."

        static let needPhotosAccess = "Please give access Photos access."
        static let needCameraAccess = "Please give access Camera access."
        static let needMicAccess = "Please give access Mic access."
        static let needNotifAccess = "Please give access to send notifications"
        static let allowMicToRecord = "Don't have access to use the microphone, Please allow microphone access to record audio."

        
    }
    
    struct general {
        static let ok = "Ok"
        static let yes = "Yes"
        static let no = "No"
        static let later = "Later"
        static let retry = "Retry"
        static let allow = "Allow"

        static let updateApp = "Please update the app."
        static let updateAvailable = "New update available, Do you want to update the app ?"
        static let appUptoDate = "You have the latest version of the ISIT app."
        
        static let savedInDraft = "Post saved in Draft"
        static let failedToSavedInDraft = "Post failed to saved in Draft"

        
    }
    
    struct product {
        
        static let enterName = "Please enter product name."
        static let invalidName = "Please enter atleast _ characters in product name."
        static let enterPrice = "Please enter price."
        static let reloadingProducts = "Reloading Products"
        static let selectMedia = "Please select atleast 1 image/video of the product."
        static let confirmDelete = "Are you sure you want to delete this product?"
        static let invalidDescription = "Please enter atleast _ characters in product description."

        static let enterValidPrice = "Please enter a price more then zero or mark it as free."

        
    }
    
    struct event {
        
        static let enterName = "Please enter event name."
        static let invalidName = "Please enter atleast _ characters in event name."
        static let reloadingEvents = "Reloading events"
        static let confirmDelete = "Are you sure you want to delete this event?"

        static let enterDate = "Please select event date."
        static let enterStartTime = "Please select event start time."
        static let enterEndTime = "Please select event end time."

        static let selectFutureDate = "Please select future date."
        static let selectFutureTime = "Please select future time."
        static let invalidEndTime = "Please select End time more then as of Start time."

        static let broadcastingEnded = "Broadcaster has left the event."
        static let waitWhilebroadcasterJoin = "Please wait while broadcaster is joining."
        static let broadcasterVideoOff = "Broadcaster has turned off the video."
        static let confirmEventFinish = "Are you sure you want to finish the event?"
        static let confirmLiveBroadCastingFinish = "Are you sure you want to end the live streaming?"
        static let liveBroadcastingEnded = "Broadcaster has stopped the live streaming."

        static let liveSteamingAlreadyStopped = "Broadcaster has already stopped the live streaming."

    }
    
    struct chat {
        static let reloading = "Reloading messages"
        static let noChatMessageFound = "No chat message found."
        static let confirmAudioMessageDismiss = "Are you sure you want to cancel sending audio message?"
        static let confirmAudioMessageOverride = "Are you sure you want to override last recorded audio message?"
        static let confirmMessageDelete = "Are you sure you want to delete this message?"
        static let reloadingUsers = "Reloading Users"

        static let enterName = "Please enter chat room name."
        static let enterValidName = "Please enter atleast _ characters in chat room name."
        
        static let selectUser = "Please select atleast 1 user."
        static let chatRoomCreated = "Chat room created successfully."
        static let selectChatRoomPic = "Please select chat room picture."
        static let cancelGroupUpdateConfirm = "​Are you sure you want to discard changes?"
        static let confirmLeavingGroup = "​Are you sure you want to leave this group?"
        static let confirmRemoveFromGroup = "​Are you sure you want to remove this user from group?"
        static let confirmDeleteGroup = "​Are you sure you want to delete this group?"

        static let participantsAdded = "Participant(s) added successfully."
        static let addingParticipantLimitReached = "Participants limit reached."

        static let chatRoomNotAvaialable = "Chat room is no longer available."
        
        static let onAnotherCall = "User is on another call!"
        static let missedACallFrom = "Missed a call from "
        static let connecting = "Connecting..."
        static let notPicked = "User didn't picked the call!"
        static let ringing = "Ringing..."
        static let callEnded = "Call ended!"
        static let userBusy = "User is busy!"
        
    }
    


}


extension String {
    
    func withLimit(limit: Int) -> String {
        return self.replacingOccurrences(of: "_", with: "\(limit)")
    }
}

