<?php
header("Content-Type:application/json");

/*Call function with these configurations*/
    $key = 'OzGxbb72ZDsC7FKGtwmrZmcHZekaokKt';
    $secret = 'MzY7YAwbOoo6Jv3h';
    $shortcode = '174379';
    $Passkey = 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919';
    $Type_of_Transaction = 'CustomerPayBillOnline';

    $env="sandbox";
    $type = 4;
    $initiatorName = "testapi";
    $initiatorPassword = "Safaricom978!";
    $results_url = 'https://mpesa-requestbin.herokuapp.com/1l54vfg1'; //Endpoint to receive results Body
    $timeout_url = 'https://mpesa-requestbin.herokuapp.com/1l54vfg1'; //Endpoint to to go to on timeout
/*End  configurations*/

/*Ensure transaction code is entered*/
    if (!isset($_POST["Check_request_ID"])) {
        echo "Technical error";
        exit();
    }
/*End transaction code validation*/

    $transactionID = $_POST["Check_request_ID"]; 
    //$transactionID = "OEI2AK4Q16";
    $command = "TransactionStatusQuery";
    $remarks = "Transaction Status Query"; 
    $occasion = "Transaction Status Query";
    $callback = null ;

    
    $access_token = ($env == "live") ? "https://api.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials" : "https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials"; 
    $credentials = base64_encode($key . ':' . $secret); 
    
    $ch = curl_init($access_token);
    curl_setopt($ch, CURLOPT_HTTPHEADER, ["Authorization: Basic " . $credentials]);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
    $response = curl_exec($ch);
    curl_close($ch);
    
    $result = json_decode($response); 

    //echo $result->{'access_token'};
    
    $token = isset($result->{'access_token'}) ? $result->{'access_token'} : "N/A";

    // $publicKey = file_get_contents(__DIR__ . "/mpesa_public_cert.cer"); 
    // $isvalid = openssl_public_encrypt($initiatorPassword, $encrypted, $publicKey, OPENSSL_PKCS1_PADDING); 
    // $password = base64_encode($encrypted);

    //echo $token;

    $curl_post_data = array( 
        "Initiator" => $initiatorName, 
        "SecurityCredential" => $initiatorPassword, 
        "CommandID" => $command, 
        "TransactionID" => $transactionID, 
        "PartyA" => $shortcode, 
        "IdentifierType" => $type, 
        "ResultURL" => $results_url, 
        "QueueTimeOutURL" => $timeout_url, 
        "Remarks" => $remarks, 
        "Occasion" => $occasion,
    ); 

    $data_string = json_encode($curl_post_data);

    //echo $data_string;

    $endpoint = ($env == "live") ? "https://api.safaricom.co.ke/mpesa/transactionstatus/v1/query" : "https://sandbox.safaricom.co.ke/mpesa/transactionstatus/v1/query"; 

    $ch2 = curl_init($endpoint);
    curl_setopt($ch2, CURLOPT_HTTPHEADER, [
        'Authorization: Bearer '.$token,
        'Content-Type: application/json'
    ]);
    curl_setopt($ch2, CURLOPT_POST, 1);
    curl_setopt($ch2, CURLOPT_POSTFIELDS, $data_string);
    curl_setopt($ch2, CURLOPT_RETURNTRANSFER, 1);
    $response     = curl_exec($ch2);
    curl_close($ch2);

    //echo "Authorization: ". $response;

    $result = json_decode($response); 
    
    $verified = $result->{'ResponseCode'};
    if($verified === "0"){
        print_r($result);
        // return $result;
    }else{
        echo "Transaction doesnt exist";
    }