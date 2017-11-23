
@interface ICNote : NSObject
@property (readonly,nonatomic) NSString *title;
@end

@interface NoteTextView : UIView
@property (copy,nonatomic) NSString *text;
@end

@interface NoteContentLayer : UIView
@property (retain,nonatomic) NoteTextView *textView;
@end



@interface ICNoteEditorViewController : UIViewController
//@property(retain, nonatomic) ICTextView *textView;
@property (retain,nonatomic) ICNote *note;
@end
