// Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MDCSelfSizingStereoCellColorThemer.h"

static const CGFloat kHighAlpha = 0.87f;
static const CGFloat kInkAlpha = 0.16f;

@implementation MDCSelfSizingStereoCellColorThemer

+ (void)applySemanticColorScheme:(id<MDCColorScheming>)colorScheme
          toSelfSizingStereoCell:(MDCSelfSizingStereoCell *)cell {
  cell.titleLabel.textColor = colorScheme.onSurfaceColor;
  cell.detailLabel.textColor = colorScheme.onSurfaceColor;
  cell.leadingImageView.tintColor = [colorScheme.onSurfaceColor colorWithAlphaComponent:kHighAlpha];
  cell.trailingImageView.tintColor =
      [colorScheme.onSurfaceColor colorWithAlphaComponent:kHighAlpha];
  cell.inkColor = [colorScheme.onSurfaceColor colorWithAlphaComponent:kInkAlpha];
}

@end
