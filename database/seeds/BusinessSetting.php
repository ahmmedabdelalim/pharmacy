<?php
use Illuminate\Support\Facades\DB;

use Illuminate\Database\Seeder;

class BusinessSetting extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       DB::table('business_settings')->insert( [
            'id'=>1,
            'key'=>'self_pickup',
            'value'=>'1',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>3,
            'key'=>'restaurant_name',
            'value'=>'ahmed',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>4,
            'key'=>'currency',
            'value'=>'ZAR',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>5,
            'key'=>'logo',
            'value'=>'2022-04-02-624867f00e6de.png',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>6,
            'key'=>'mail_config',
            'value'=>'{\"name\":\"Delivery APP\",\"host\":\"mail.demo.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"tls\",\"password\":\"demo\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-07-25 09:32:09'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>7,
            'key'=>'delivery_charge',
            'value'=>'100',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>8,
            'key'=>'ssl_commerz_payment',
            'value'=>'{\"status\":\"0\",\"store_id\":null,\"store_password\":null}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-07-25 09:32:22'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>9,
            'key'=>'paypal',
            'value'=>'{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-07-25 09:32:42'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>10,
            'key'=>'stripe',
            'value'=>'{\"status\":\"0\",\"api_key\":null,\"published_key\":null}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-07-25 09:32:50'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>11,
            'key'=>'phone',
            'value'=>'+01747413273',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>13,
            'key'=>'footer_text',
            'value'=>'copyright',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>14,
            'key'=>'address',
            'value'=>'Hazi osman gani lane',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>15,
            'key'=>'email_address',
            'value'=>'abcd@gmail.com',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>16,
            'key'=>'cash_on_delivery',
            'value'=>'{\"status\":\"1\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-02-11 18:39:36'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>17,
            'key'=>'email_verification',
            'value'=>'0',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>18,
            'key'=>'digital_payment',
            'value'=>'{\"status\":\"1\"}',
            'created_at'=>'2021-01-30 19:38:54',
            'updated_at'=>'2021-01-30 19:38:58'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>19,
            'key'=>'terms_and_conditions',
            'value'=>'
            ',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-05-30 08:51:56'
            ] );
            
                        
           DB::table('business_settings')->insert( [
            'id'=>20,
            'key'=>'fcm_topic',
            'value'=>'',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>21,
            'key'=>'fcm_project_id',
            'value'=>'3f34f34',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>22,
            'key'=>'push_notification_key',
            'value'=>'demo',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>24,
            'key'=>'order_pending_message',
            'value'=>'{\"status\":1,\"message\":\"Your order has been placed successfully.\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>25,
            'key'=>'order_processing_message',
            'value'=>'{\"status\":1,\"message\":\"Your order is going to the cook\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>26,
            'key'=>'out_for_delivery_message',
            'value'=>'{\"status\":1,\"message\":\"Order out for delivery.\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>27,
            'key'=>'order_delivered_message',
            'value'=>'{\"status\":1,\"message\":\"delivered\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>28,
            'key'=>'delivery_boy_assign_message',
            'value'=>'{\"status\":1,\"message\":\"boy assigned\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>29,
            'key'=>'delivery_boy_start_message',
            'value'=>'{\"status\":1,\"message\":\"start delivery\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>30,
            'key'=>'delivery_boy_delivered_message',
            'value'=>'{\"status\":1,\"message\":\"boy delivered\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>32,
            'key'=>'order_confirmation_msg',
            'value'=>'{\"status\":1,\"message\":\"Your order has been confirmed.\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>33,
            'key'=>'razor_pay',
            'value'=>'{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}',
            'created_at'=>'2021-02-14 10:15:12',
            'updated_at'=>'2021-07-25 09:32:32'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>34,
            'key'=>'location_coverage',
            'value'=>'{\"status\":1,\"longitude\":\"91.410747\",\"latitude\":\"22.986282\",\"coverage\":\"20\"}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>35,
            'key'=>'minimum_order_value',
            'value'=>'50',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>36,
            'key'=>'software_mode',
            'value'=>'dev',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>37,
            'key'=>'software_version',
            'value'=>'2021-01-06 05:55:51',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>38,
            'key'=>'paystack',
            'value'=>'{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}',
            'created_at'=>'2021-04-24 18:40:34',
            'updated_at'=>'2021-07-25 09:33:19'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>39,
            'key'=>'senang_pay',
            'value'=>'{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}',
            'created_at'=>'2021-04-27 14:02:18',
            'updated_at'=>'2021-07-25 09:33:06'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>40,
            'key'=>'privacy_policy',
            'value'=>'
            rjdrjf',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-05-30 08:52:40'
            ] );
            
                        
           DB::table('business_settings')->insert( [
            'id'=>41,
            'key'=>'about_us',
            'value'=>'
            hello
            
            ',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-05-30 08:44:52'
            ] );
            
                        
           DB::table('business_settings')->insert( [
            'id'=>42,
            'key'=>'paystack',
            'value'=>'{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-07-25 09:33:19'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>43,
            'key'=>'currency_symbol_position',
            'value'=>'right',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>44,
            'key'=>'country',
            'value'=>'BD',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>45,
            'key'=>'language',
            'value'=>'[\"en\",\"af\"]',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>46,
            'key'=>'time_zone',
            'value'=>'Pacific/Midway',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>47,
            'key'=>'phone_verification',
            'value'=>'0',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>48,
            'key'=>'maintenance_mode',
            'value'=>'0',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>49,
            'key'=>'twilio_sms',
            'value'=>'{\"status\":0,\"sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}',
            'created_at'=>'2021-09-05 09:16:15',
            'updated_at'=>'2021-09-05 09:16:15'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>50,
            'key'=>'nexmo_sms',
            'value'=>'{\"status\":0,\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":null}',
            'created_at'=>'2021-09-05 09:16:20',
            'updated_at'=>'2021-09-05 09:16:20'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>51,
            'key'=>'2factor_sms',
            'value'=>'{\"status\":\"0\",\"api_key\":null}',
            'created_at'=>'2021-09-05 09:16:25',
            'updated_at'=>'2021-09-05 09:16:25'
            ] );
                        
            DB::table('business_settings')->insert( [
            'id'=>52,
            'key'=>'msg91_sms',
            'value'=>'{\"status\":0,\"template_id\":null,\"authkey\":null}',
            'created_at'=>'2021-09-05 09:16:30',
            'updated_at'=>'2021-09-05 09:16:30'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>53,
            'key'=>'pagination_limit',
            'value'=>'10',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>54,
            'key'=>'map_api_key',
            'value'=>'',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
                        
           DB::table('business_settings')->insert( [
            'id'=>55,
            'key'=>'delivery_management',
            'value'=>'{\"status\":\"0\",\"min_shipping_charge\":0,\"shipping_per_km\":0}',
            'created_at'=>'2021-01-06 05:55:51',
            'updated_at'=>'2021-01-06 05:55:51'
            ] );
    }
}
