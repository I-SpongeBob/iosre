//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "WNParaObjectBaseView.h"

#import "IWNAudioMgrExt.h"

@class CAShapeLayer, NSString, UIImageView, UILabel, UIView;

@interface WNParaObjectVoiceView : WNParaObjectBaseView <IWNAudioMgrExt>
{
    UIView *borderView;
    CAShapeLayer *borderLayer;
    UILabel *titleLabel;
    UIImageView *playingImageView;
    int viewType;
}

- (void).cxx_destruct;
- (void)OnEndPlayWNAudio:(id)arg1;
- (void)OnBeginPlayWNAudio:(id)arg1;
- (void)OnStartWNAudioRecordWithObj:(id)arg1;
- (void)OnEndWNAudioRecordWithObj:(id)arg1 FilePath:(id)arg2 VoiceTime:(float)arg3 VoiceFmt:(unsigned int)arg4;
- (id)getDuration:(int)arg1;
- (void)setUnSelected;
- (void)setSelected;
- (void)onTouchEnd;
- (void)onTouchBegin;
- (void)checkStartOrStopPlay;
- (void)onClickObject;
- (void)showPlayingView;
- (void)showRecordingView;
- (void)showNormalView;
- (void)layoutViewCommon;
- (void)layoutView;
- (void)dealloc;
- (id)init;

// Remaining properties
@property(readonly, copy) NSString *debugDescription;
@property(readonly, copy) NSString *description;
@property(readonly) unsigned long long hash;
@property(readonly) Class superclass;

@end

