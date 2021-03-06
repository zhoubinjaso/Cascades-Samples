/* Copyright (c) 2012 Research In Motion Limited.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

#ifndef _IMAGEPAINTRECIPE_H_
#define _IMAGEPAINTRECIPE_H_

#include <bb/cascades/CustomControl>

using namespace bb::cascades;

namespace bb
{
    namespace cascades
    {
        class Container;
    }
}

/** 
 * ImagePaintRecipe
 * 
 * ImagePaint is typically used for tileable images. A tileable
 * image is one that can be repeated as a pattern over a surface.
 * This is illustrated in this recipe by showing how a Container
 * background can be filled with tiled image patterns.
 *
 */
class ImagePaintRecipe: public bb::cascades::CustomControl
{
Q_OBJECT

public:
    ImagePaintRecipe(Container *parent = 0);

private slots:
    /**
     * The slot function that is used when connecting to the selectedIndexChanged
     * signal for the DropDown Control.
     *
     * @param selectedIndex  The index of newly selected option
     */
    void onSelectedIndexChanged(int selectedIndex);

private:
    Container *mRecipeContainer;
};

#endif // ifndef _IMAGEPAINTRECIPE_H_
