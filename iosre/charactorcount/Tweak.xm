#import "CharacountForNotes8.h"

%hook ICNoteEditorViewController
-(void)viewWillAppear:(BOOL)arg1// Initialize title
{
    %orig;
    NSLog (@"1"); 

    NSString *content=self.note.title;
    NSString *contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
    self.title=contentLength;

}
-(void)viewDidDisappear:(BOOL)arg1//Reset title
{
    %orig;
    NSLog (@"2"); 
    self.title=nil;
}
- (void)textViewDidChange:(id)arg1

{
    %orig;
   NSLog (@"3"); 
   NSString *content=self.note.title;
    NSString *contentLength=[NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
    self.title=contentLength;

}
%end