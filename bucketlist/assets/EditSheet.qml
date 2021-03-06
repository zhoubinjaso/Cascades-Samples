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
import bb.cascades 1.0

// A sheet that is used for editing and adding new items to the Bucket List application.
Sheet {
    id: editSheet

    // Custom properties.
    property alias title: addBar.title
    property alias hintText: itemText.hintText
    property alias text: itemText.text

    // A custom signal that is triggered when the acceptAction is triggered.
    signal saveBucketItem(string text)
    
    Page {
        id: addPage
        
        titleBar: TitleBar {
            id: addBar
            title: "Add"
            visibility: ChromeVisibility.Visible
            
            dismissAction: ActionItem {
                title: "Cancel"
                onTriggered: {
                    // Hide the Sheet.
                    editSheet.visible = false
                }
            }
            
            acceptAction: ActionItem {
                title: "Save"
                onTriggered: {
                    // Hide the Sheet and emit signal the the item should be saved.
                    editSheet.visible = false
                    editSheet.saveBucketItem(itemText.text);
                }
            }
        }
        
        Container {
            id: editPane
            property real margins: 40
            background: Color.create("#f8f8f8")
            
            layout: DockLayout {
                topPadding: editPane.margins
                leftPadding: editPane.margins
                rightPadding: editPane.margins
            }
            
            attachedObjects: [
                TextStyleDefinition {
                    id: editTextStyle
                    base: SystemDefaults.TextStyles.TitleText
                }
            ]
            
            Container {
                
                TextArea {
                    id: itemText
                    hintText: "New item on the bucket list"
                    topMargin: editPane.margins
                    bottomMargin: topMargin
                    preferredHeight: 450
                    maxHeight: 450
                    
                    textStyle {
                        base: editTextStyle.style
                    }
                    
                    layoutProperties: StackLayoutProperties {
                        horizontalAlignment: HorizontalAlignment.Fill
                    }
                }
            }
        }
    }
}
