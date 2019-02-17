import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:floatplane/config/l10n/messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    String name =
        locale.countryCode.isEmpty ? locale.countryCode : locale.toString();
    name = name ?? 'es';
    String localeName = Intl.canonicalizedLocale(name);
    if (localeName.isEmpty) {
      localeName = 'en';
    }
    Intl.defaultLocale = 'es';
    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  //A
  //B
  String get back {
    return Intl.message('Back', name: 'AppLocalizations_back', desc: 'back');
  }

  //C
  String get cancel {
    return Intl.message('Cancel',
        name: 'AppLocalizations_cancel', desc: 'cancel');
  }

  String get changePassword {
    return Intl.message('Change Password',
        name: 'AppLocalizations_changePassword', desc: 'changePassword');
  }

  //D

  String get noAccount {
    return Intl.message('Don\'t Have an account?',
        name: 'AppLocalizations_noAccount', desc: 'noAccount');
  }

  String get delete {
    return Intl.message('Delete',
        name: 'AppLocalizations_delete', desc: 'delete');
  }

  //E
  String get edit {
    return Intl.message('Edit', name: 'AppLocalizations_edit', desc: 'edit');
  }

  String get editProfile {
    return Intl.message('Edit Profile',
        name: 'AppLocalizations_editProfile', desc: 'editProfile');
  }

  String get emailLabel {
    return Intl.message('Email',
        name: 'AppLocalizations_emailLabel', desc: 'emailLabel');
  }

  //F
  String get forgotPassword {
    return Intl.message('Forgot Password',
        name: 'AppLocalizations_forgotPassword', desc: 'forgotPassword');
  }

  String get forgotPasswordMessage {
    return Intl.message(
        'Type your email and we will send you and email to reset your password',
        name: 'AppLocalizations_forgotPasswordMessage',
        desc: 'forgotPasswordMessage');
  }

  String get fullName {
    return Intl.message('Full Name',
        name: 'AppLocalizations_fullName', desc: 'fullName');
  }

  String get fillBelow {
    return Intl.message('Please fill out below to get started',
        name: 'AppLocalizations_fillBelow', desc: 'fillBelow');
  }

  //G
  //H
  //I
  String get invalidEmail {
    return Intl.message('Not a valid email.',
        name: 'AppLocalizations_invalidEmail', desc: 'invalidEmail');
  }

  //J
  //K
  //L
  String get login {
    return Intl.message('Login', name: 'AppLocalizations_login', desc: 'login');
  }

  String get logout {
    return Intl.message('Log Out',
        name: 'AppLocalizations_logout', desc: 'logout');
  }

  //M
  //N
  String get name {
    return Intl.message('Name', name: 'AppLocalizations_name', desc: 'name');
  }

  String get nameStringInputErrorText {
    return Intl.message('The Name must contain only characters',
        name: 'AppLocalizations_nameStringInputErrorText',
        desc: 'nameStringInputErrorText');
  }

  String get noAccountSignUp {
    return Intl.message('Don\'t have an account?',
        name: 'AppLocalizations_noAccountSignUp', desc: 'noAccountSignUp');
  }

  String get newPassword {
    return Intl.message('New', name: 'AppLocalizations_new', desc: 'new');
  }

  String get notifications {
    return Intl.message('Notifications',
        name: 'AppLocalizations_Notifications', desc: 'Notifications');
  }

  //O
  String get oldPassword {
    return Intl.message('Old', name: 'AppLocalizations_old', desc: 'old');
  }

  //P
  String get passwordLabel {
    return Intl.message('Password',
        name: 'AppLocalizations_passwordLabel', desc: 'passwordLabel');
  }

  String get verifyEmail {
    return Intl.message('Please verify your email id',
        name: 'AppLocalizations_verifyEmail', desc: 'verifyEmail');
  }

  String get passwordTooShort {
    return Intl.message('Password too short',
        name: 'AppLocalizations_passwordTooShort', desc: 'passwordTooShort');
  }

  String get phoneInputErrorText {
    return Intl.message('Phone number must be digits only',
        name: 'AppLocalizations_phoneInputErrorText',
        desc: 'Error text for name input');
  }

  String get profile {
    return Intl.message('Profile',
        name: 'AppLocalizations_profile', desc: 'profile');
  }

  String get privacyDisclaimer {
    return Intl.message(
        'We\'ll never post without your permission. By using Floatplane, you agree to the',
        name: 'AppLocalizations_privacyDisclaimer',
        desc: 'privacyDisclaimer');
  }

  //Q
  //R
  String get rememberMe {
    return Intl.message('Remember me',
        name: 'AppLocalizations_rememberme', desc: 'rememberme');
  }

  String get requiredField {
    return Intl.message('Required Field',
        name: 'AppLocalizations_requiredField', desc: 'requiredField');
  }

  //S
  String get saveChanges {
    return Intl.message('Save Changes',
        name: 'AppLocalizations_saveChanges', desc: 'saveChanges');
  }

  String get search {
    return Intl.message('Search',
        name: 'AppLocalizations_search', desc: 'search');
  }

  String get signIn {
    return Intl.message('Sign in',
        name: 'AppLocalizations_signIn', desc: 'signIn');
  }

  String get signInWith {
    return Intl.message('Sign In with',
        name: 'AppLocalizations_signInWith', desc: 'signInWith');
  }

  String get signUp {
    return Intl.message('Sign Up',
        name: 'AppLocalizations_signUp', desc: 'signUp');
  }

  //T
  String get termsAndConditions {
    return Intl.message('Terms & Conditions policy',
        name: 'AppLocalizations_termsAndConditions',
        desc: 'termsAndConditions');
  }

  //U
  //V
  //W
  String get welcomeBack {
    return Intl.message('Welcome Back',
        name: 'AppLocalizations_welcomeBack', desc: 'welcomeBack');
  }
  //X
  //Y
  //Z

}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    return ['en', 'es'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) {
    return false;
  }
}
