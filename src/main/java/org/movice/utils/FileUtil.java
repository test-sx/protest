package org.movice.utils;

import java.io.*;

/**
 * 文件操作
 * @author 宋晓旭
 * @date 2020/09/22
 */
public class FileUtil {
    /**
     * 读文件
     * @param path
     * @return
     */
    public static boolean readFile(String path) {
        boolean result = false;
        try {
            File file = new File(path);
            FileReader fileReader = new FileReader(file);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                String s = bufferedReader.readLine();
                if (s == null) {
                    break;
                }
                System.out.println(s);
            }
            result = true;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 新建文件写内容
     * @param path
     * @return
     */
    public static boolean createFile(String path,String content){
        boolean result = false;
        try{
            File file = new File(path);
            if(file.exists()){
                System.out.println(path+"文件已存在");
                return result;
            }

            FileWriter fw = new FileWriter(file,false);
            BufferedWriter bufferedWriter = new BufferedWriter(fw);
            bufferedWriter.write(content);
            bufferedWriter.flush();
            bufferedWriter.close();
            result = true;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 改文件名
     * @param path
     * @param oldName
     * @param newName
     * @return
     */
    public static boolean renameFile(String path,String oldName,String newName){
        boolean result = false;
        //新的文件名和以前文件名不同时,才有必要进行重命名
        if(!oldName.equals(newName)){
            File oldfile=new File(path+"/"+oldName);
            File newfile=new File(path+"/"+newName);
            if(!oldfile.exists()){
                System.out.println(oldName+"文件不存在");
                return result;
            }
            //若在该目录下已经有一个文件和新文件名相同，则不允许重命名
            if(newfile.exists())
                System.out.println(newName+"已经存在！");
            else{
                oldfile.renameTo(newfile);
                result = true;
            }
        }else{
            System.out.println("新文件名和旧文件名相同...");
        }
        return result;
    }

    /**
     * 文件中添加内容
     * @param path
     * @return
     */
    public static boolean writeFile(String path, String content){
        boolean result = false;
        try{
            File file = new File("src\\fileone.txt");
            FileWriter fw = new FileWriter(file,true);
            BufferedWriter bufferedWriter = new BufferedWriter(fw);
            bufferedWriter.newLine();
            bufferedWriter.write(content);
            bufferedWriter.flush();
            bufferedWriter.close();
            result = true;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void main(String[] args) {
        String path = "src\\";
        String fileName = "fileone.txt";
        String fileNewName = "filetwo.txt";
        String content = "你好，hello";
        //新建文件并写内容
//        boolean createFile = createFile(path+fileName,content);
//        if (createFile){
//            System.out.println("成功新建文件");
//        }
//        //读文件内容
//        boolean readeFile = readFile(path+fileName);
//        文件中写内容
//        boolean writeFile = writeFile(path,content);
//        if (writeFile){
//            System.out.println("成功写入文件内容");
//        }
//        //读文件内容
//        boolean readeFile2 = readFile(path+fileName);
        //修改文件名称
//        boolean renameFile = renameFile(path,fileName,fileNewName);
//        if (renameFile){
//            System.out.println("文件名称修改成功");
//        }
        //读文件内容
        boolean readeFile3 = readFile(path+fileNewName);
    }


}
