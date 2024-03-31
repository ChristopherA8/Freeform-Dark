@import UIKit;

%hook CRLCanvasLayer
-(CGColorRef)backgroundColor {
   return [UIColor blackColor].CGColor;
}
-(CAReplicatorLayer *)associatedDotGridLayer {
   CAReplicatorLayer *newGrid = %orig;
   newGrid.backgroundColor = [UIColor blackColor].CGColor;
   return newGrid;
}
%end