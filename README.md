# ZOHO CRM RUBY SDK 6.0 for API version 6

The Ruby SDK for Zoho CRM allows developers to easily create Ruby applications that can be integrated with Zoho CRM. This SDK serves as a wrapper for the REST APIs, making it easier to access and utilize the services of Zoho CRM. 
Authentication to access the CRM APIs is done through OAuth2.0, and the authentication process is streamlined through the use of the Ruby SDK. The grant and access/refresh tokens are generated and managed within the SDK code, eliminating the need for manual handling during data synchronization between Zoho CRM and the client application.

This repository includes the Ruby SDK for API v6 of Zoho CRM. Check [Versions](https://github.com/zoho/zohocrm-ruby-sdk-6.0/releases) for more details on the versions of SDK released for this API version.

License
=======

    Copyright (c) 2021, ZOHO CORPORATION PRIVATE LIMITED 
    All rights reserved. 

    Licensed under the Apache License, Version 2.0 (the "License"); 
    you may not use this file except in compliance with the License. 
    You may obtain a copy of the License at 
    
        http://www.apache.org/licenses/LICENSE-2.0 
    
    Unless required by applicable law or agreed to in writing, software 
    distributed under the License is distributed on an "AS IS" BASIS, 
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
    See the License for the specific language governing permissions and 
    limitations under the License.

## Latest Version

- [3.0.0](/versions/3.0.0/README.md)
    - Changed phone and mobile field datatype in Users.
    - Added new moveAttachmentsTo field in LeadConverter class.

- [2.0.0](/versions/2.0.0/README.md)
    - Changed favorite field datatype in CustomViews.
    - Changed tabTraversal field datatype in Layouts Sections.
    - Support for the following new APIs.
        - CustomViews
            - [Change Sort Order of Custom Views](https://www.zoho.com/crm/developer/docs/api/v6/sort-order-cv.html)
        - Users
            - [Users Count](https://www.zoho.com/crm/developer/docs/api/v6/users-count.html)
        - Features
            - [User Licences Count](https://www.zoho.com/crm/developer/docs/api/v6/get-user-licences.html)

- [1.0.0](/versions/1.0.0/README.md)
    - Ruby SDK upgraded to support v6 APIs.
    - Ruby SDK improved to support the following new APIs
      - [Unsubscribe Links](https://www.zoho.com/crm/developer/docs/api/v6/get-unsubscribe-links.html)
      - [Find and Merge API](https://www.zoho.com/crm/developer/docs/api/v6/merge-records.html)
      - [Get Related Records of Deleted Record API](https://www.zoho.com/crm/developer/docs/api/v6/get-related-records-of-deleted-record.html)
      - [Features API](https://www.zoho.com/crm/developer/docs/api/v6/get-features.html)
      - [Global Picklist API](https://www.zoho.com/crm/developer/docs/api/v6/get-global-picklist.html)
      - [Unblock Email API](https://www.zoho.com/crm/developer/docs/api/v6/unblock-emails.html)


For older versions, please [refer](https://github.com/zoho/zohocrm-ruby-sdk-6.0/releases).


## Including the SDK in your project
You can include the SDK to your project using:

- For including the latest [version](https://github.com/zoho/zohocrm-ruby-sdk-6.0/releases/tag/3.0.0)

    - Ruby SDK is available through Gem . You can download the gem using:

        `gem install ZOHOCRMSDK6_0` 

    - You can include the SDK to your project using:

        `require 'ZOHOCRMSDK6_0'`

    - The Ruby SDK will be installed in your client application.

    ### Dependencies
    - Dependencies that should be included in the project
        - install **cgi**
            ```shell
            gem install cgi
            ```
        - install **csv**
            ```shell
            gem install csv
            ```
        - install **json**
            ```shell
            gem install json
            ```
        - install **multipart-post**
            ```shell
            gem install multipart-post
            ```
        - install **rest-client**
            ```shell
            gem install rest-client
            ```
        - install **uri**
            ```shell
            gem install uri
            ```
        - install **mysql2**
            ```shell
            gem install mysql2
            ```
        - install **tzinfo**
            ```shell
            gem install tzinfo
            ```

For more details, kindly refer [here](/versions/3.0.0/README.md).
