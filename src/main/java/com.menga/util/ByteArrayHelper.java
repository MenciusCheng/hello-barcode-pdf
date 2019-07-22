package com.menga.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ByteArrayHelper {

    /**
     * 将 inputStream 转为 byte[]
     */
    public static byte[] inputStream2ByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024 * 4];
        int n = 0;
        while ((n = inputStream.read(buffer)) != -1) {
            out.write(buffer, 0, n);
        }

        inputStream.close();
        return out.toByteArray();
    }
}
