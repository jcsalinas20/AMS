/*
 * Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

/*
 * ProductAdvertisingAPI
 *
 * https://webservices.amazon.com/paapi5/documentation/index.html
 */

/*
 * This sample code snippet is for ProductAdvertisingAPI 5.0's GetVariations API
 * For more details, refer:
 * https://webservices.amazon.com/paapi5/documentation/get-variations.html
 */

package samples;

import java.util.ArrayList;
import java.util.List;

import com.amazon.paapi5.v1.ApiClient;
import com.amazon.paapi5.v1.ApiException;
import com.amazon.paapi5.v1.GetVariationsRequest;
import com.amazon.paapi5.v1.GetVariationsResource;
import com.amazon.paapi5.v1.PartnerType;
import com.amazon.paapi5.v1.api.DefaultApi;
import com.squareup.okhttp.Call;

public class SampleGetVariationsApiAsync {

    public static void main(String[] args) {
        ApiClient client = new ApiClient();

        // Add your credentials
        // Please add your access key here
        client.setAccessKey("<YOUR-ACCESS-KEY-HERE>");
        // Please add your secret key here
        client.setSecretKey("<YOUR-SECRET-KEY-HERE>");

        // Enter your partner tag (store/tracking id)
        String partnerTag = "<YOUR-PARTNER-TAG-HERE>";

        /*
         * PAAPI Host and Region to which you want to send request. For more
         * details refer:
         * https://webservices.amazon.com/paapi5/documentation/common-request-parameters.html#host-and-region
         */
        client.setHost("webservices.amazon.com");
        client.setRegion("us-east-1");

        DefaultApi api = new DefaultApi(client);

        // Request initialization

        /*
         * Choose resources you want from GetVariationsResource enum For more
         * details, refer:
         * https://webservices.amazon.com/paapi5/documentation/get-variations.html#resources-parameter
         */
        List<GetVariationsResource> getVariationsResources = new ArrayList<GetVariationsResource>();
        getVariationsResources.add(GetVariationsResource.ITEMINFO_TITLE);
        getVariationsResources.add(GetVariationsResource.OFFERS_LISTINGS_PRICE);

        // Choose ASIN
        String asin = "B07H65KP63";

        // Forming the request
        GetVariationsRequest getVariationsRequest =
                new GetVariationsRequest()
                        .ASIN(asin)
                        .partnerTag(partnerTag)
                        .resources(getVariationsResources)
                        .partnerType(PartnerType.ASSOCIATES);

        try {
            // Sending the request
            Call response = api.getVariationsAsync(getVariationsRequest, Callback.callback_getVariations);
        } catch (ApiException exception) {
            // Exception handling
            System.out.println("Error calling PA-API 5.0!");
            System.out.println("Status code: " + exception.getCode());
            System.out.println("Errors: " + exception.getResponseBody());
            System.out.println("Message: " + exception.getMessage());
            if (exception.getResponseHeaders() != null) {
                // Printing request reference
                System.out.println("Request ID: " + exception.getResponseHeaders().get("x-amzn-RequestId"));
            }
            // exception.printStackTrace();
        } catch (Exception exception) {
            System.out.println("Exception message: " + exception.getMessage());
            // exception.printStackTrace();
        }
    }
}
