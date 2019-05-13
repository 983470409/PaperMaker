package com.zhang.service;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

public class test {

    public static void main(String[] args) {

            InputStream inputStream;//接收字节输入流
            InputStreamReader inputStreamReader;//将字节输入流转换成字符输入流
            BufferedReader bufferedReader;//为字符输入流加缓冲
            FileOutputStream fileOutputStream;//字节输出流
            OutputStreamWriter outputStreamWriter;//将字节输出流转换成字符输出流

            URL wangyi = null;
            try {
                    wangyi = new URL("http://localhost:8080/testWeB/paperResource/selfMakePaper.jsp");
                    inputStream = wangyi.openStream();
                    inputStreamReader = new InputStreamReader(inputStream, "utf-8");
                    bufferedReader = new BufferedReader(inputStreamReader);
                    String jspHead = "<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>";
                    String s;
                    File dest = new File("D:\\testWeB\\src\\main\\webapp\\paperResource\\wangyi.jsp");
                    fileOutputStream = new FileOutputStream(dest);

                    outputStreamWriter = new OutputStreamWriter(fileOutputStream, "utf-8");

                    outputStreamWriter.write(jspHead);
                    while ((s = bufferedReader.readLine()) != null) {
                            outputStreamWriter.write(s);
                    }

                    outputStreamWriter.close();
                    fileOutputStream.close();
                    bufferedReader.close();
                    inputStreamReader.close();
                    inputStream.close();

            } catch (MalformedURLException e) {
                    e.printStackTrace();
            } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
            } catch (FileNotFoundException e) {
                    e.printStackTrace();
            } catch (IOException e) {
                    e.printStackTrace();
            }

    }

}
