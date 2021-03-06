.class public Lcom/android/settings/DateTimeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoDateTimeButton:Landroid/widget/CompoundButton;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedTimeZone:Ljava/util/TimeZone;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

.field private mTimeZoneButton:Landroid/widget/Button;

.field private mTimeZonePopup:Landroid/widget/ListPopupWindow;

.field private mUsingXLargeLayout:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-class v0, Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 327
    new-instance v0, Lcom/android/settings/DateTimeSettingsSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettingsSetupWizard$1;-><init>(Lcom/android/settings/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettingsSetupWizard;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private isAutoDateTimeEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 299
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_a} :catch_10

    move-result v2

    if-lez v2, :cond_e

    .line 301
    :goto_d
    return v1

    .line 299
    :cond_e
    const/4 v1, 0x0

    goto :goto_d

    .line 300
    :catch_10
    move-exception v0

    .line 301
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_d
.end method

.method private showTimezonePicker(I)V
    .registers 6
    .parameter "anchorViewId"

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, anchorView:Landroid/view/View;
    if-nez v0, :cond_1f

    .line 285
    sget-object v1, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find zone picker anchor view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_1e
    return-void

    .line 288
    :cond_1f
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 289
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 290
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 291
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_1e
.end method

.method private updateTimeAndDateDisplay()V
    .registers 6

    .prologue
    .line 316
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_5

    .line 325
    :goto_4
    return-void

    .line 319
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 320
    .local v0, now:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 323
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 324
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_4
.end method


# virtual methods
.method public initUiForXl()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 120
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 121
    .local v3, tz:Ljava/util/TimeZone;
    iput-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 122
    const v4, 0x7f08005c

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    .line 123
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 130
    const-string v4, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    .local v0, autoDateTimeEnabled:Z
    :goto_33
    const v4, 0x7f08005e

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iput-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    .line 136
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    const v4, 0x7f080063

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TimePicker;

    iput-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    .line 140
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_9c

    move v4, v5

    :goto_58
    invoke-virtual {v7, v4}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 141
    const v4, 0x7f080060

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    iput-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    .line 142
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_9e

    :goto_6a
    invoke-virtual {v4, v5}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 143
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4, v6}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 145
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 147
    const v4, 0x7f080009

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v4, 0x7f080007

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 149
    .local v2, skipButton:Landroid/widget/Button;
    if-eqz v2, :cond_96

    .line 150
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_96
    return-void

    .line 132
    .end local v0           #autoDateTimeEnabled:Z
    .end local v2           #skipButton:Landroid/widget/Button;
    :cond_97
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->isAutoDateTimeEnabled()Z

    move-result v0

    .restart local v0       #autoDateTimeEnabled:Z
    goto :goto_33

    :cond_9c
    move v4, v6

    .line 140
    goto :goto_58

    :cond_9e
    move v5, v6

    .line 142
    goto :goto_6a
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 208
    move v0, p2

    .line 222
    .local v0, autoEnabled:Z
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-ne p1, v2, :cond_22

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz p2, :cond_37

    move v2, v3

    :goto_10
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    iget-object v5, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_39

    move v2, v3

    :goto_18
    invoke-virtual {v5, v2}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 227
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_3b

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 229
    :cond_22
    if-eqz v0, :cond_36

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 231
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_36

    .line 232
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 236
    .end local v1           #focusedView:Landroid/view/View;
    :cond_36
    return-void

    :cond_37
    move v2, v4

    .line 223
    goto :goto_10

    :cond_39
    move v2, v4

    .line 226
    goto :goto_18

    :cond_3b
    move v3, v4

    .line 227
    goto :goto_1f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_8c

    .line 204
    :goto_7
    return-void

    .line 174
    :sswitch_8
    const v2, 0x7f08005c

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    goto :goto_7

    .line 178
    :sswitch_f
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    if-eqz v2, :cond_37

    .line 179
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 180
    .local v1, systemTimeZone:Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 181
    sget-object v2, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v3, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 184
    .local v0, alarm:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 187
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v1           #systemTimeZone:Ljava/util/TimeZone;
    :cond_37
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-eqz v2, :cond_81

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v2, 0x1

    :goto_4a
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_81

    .line 191
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/DateTimeSettings;->setDate(III)V

    .line 193
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/DateTimeSettings;->setTime(II)V

    .line 199
    :cond_81
    :sswitch_81
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->finish()V

    goto/16 :goto_7

    .line 188
    :cond_8a
    const/4 v2, 0x0

    goto :goto_4a

    .line 172
    :sswitch_data_8c
    .sparse-switch
        0x7f080007 -> :sswitch_81
        0x7f080009 -> :sswitch_f
        0x7f08005c -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v3, 0x7f04002b

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 89
    const v3, 0x7f08005c

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3a

    :goto_17
    iput-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    .line 90
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v1, :cond_3c

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->initUiForXl()V

    .line 95
    :goto_20
    const v1, 0x7f04002c

    invoke-static {p0, v2, v1}, Lcom/android/settings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    .line 103
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_39

    .line 104
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, layoutRoot:Landroid/view/View;
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 107
    .end local v0           #layoutRoot:Landroid/view/View;
    :cond_39
    return-void

    :cond_3a
    move v1, v2

    .line 89
    goto :goto_17

    .line 93
    :cond_3c
    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_20
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ZonePicker;->obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v3

    .line 241
    .local v3, tz:Ljava/util/TimeZone;
    iget-boolean v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_57

    .line 242
    iput-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 243
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 244
    .local v1, now:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    if-eqz v4, :cond_1f

    .line 245
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_1f
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 250
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 251
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 261
    .end local v1           #now:Ljava/util/Calendar;
    :goto_51
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 262
    return-void

    .line 255
    :cond_57
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 256
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f08005a

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DateTimeSettings;

    .line 259
    .local v2, settingsFragment:Lcom/android/settings/DateTimeSettings;
    invoke-virtual {v2, p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_51
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 278
    const v0, 0x7f080059

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    return-void
.end method
