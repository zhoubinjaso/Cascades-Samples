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

TabbedPane {
    id: mainTab
    showTabsOnActionBar: true
    
    // The home weather page, the user can select which city it want to show
    // here by long pressing a city in the lists and setting it as home.
    Tab {
        title: "Home"
        imageSource: "asset:///images/menuicons/icon_home.png"
        
        WeatherPage {
            id: homeCityPage
            
            // The data model and the city property of the home weather is kept in the
            // _homeModel which is created and bound in C++. 
            weatherData: _homeModel;
            city: _homeModel.city;
        }        
    }

    // The city browse page, filtering is done based on continents.
    Tab {
        title: "Browse Cities"
        imageSource: "asset:///images/menuicons/icon_browse.png"
        ContinentsPage {
            id: continents
        }
    }

    // A tab where a list of favorite cities are shown.
    Tab {
        title: "Favorites"
        imageSource: "asset:///images/menuicons/icon_favorites.png"
        FavoritePage {
            id: favorites
        }
    }

    // A tab where the maximum and minimum temperatures are shown (or are they?)
    Tab {
        title: "Max/Min"
        imageSource: "asset:///images/menuicons/icon_maxmin.png"
        MaxMinPage {
        }
    }

    // An information page presenting some background for the application.
    Tab {
        title: "Info"
        imageSource: "asset:///images/menuicons/icon_info.png"
        InfoPage {
        }
    }
}