
public class SecurityService {

    public static String hashPassword(String password,String salt){

        Blob blobPassword = Blob.valueOf(password+salt);
        Blob hash = Crypto.generateDigest('SHA-512', blobPassword);
        return EncodingUtil.base64Encode(hash);

    }

}