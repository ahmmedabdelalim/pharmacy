<?php
function responseJson($status, $msg, $data = [])
{
    return response()->json(['status' => $status, 'msg' => $msg, 'data' => $data], 200);
}
