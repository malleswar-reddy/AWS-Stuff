package com.aws.lambda;

public class AwsLambdaTest {
    public String Todo(String data) {

        String lowerCase = data.replace('e', '1').replace('a', '2').toLowerCase();
        return  lowerCase;
    }
}
