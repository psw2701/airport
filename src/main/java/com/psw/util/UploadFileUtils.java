package com.psw.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {
	public static String uploadFile(String uploadPath, // uploadκ²½λ‘
			String originalName, // ??Ό?΄λ¦?
			byte[] fileData) throws IOException {// ??Ό ?°?΄?°

		UUID uid = UUID.randomUUID();// μ€λ³΅?μ§? ?? κ³ μ ? ?€κ°μ λ§λ¬
		String savedName = uid.toString() + "_" + originalName;
		String savedPath = calcPath(uploadPath);
		File target = new File(uploadPath + savedPath + "/" + savedName);
		FileCopyUtils.copy(fileData, target);

		// ------------------------
		// Thumnail
		// ------------------------

		String thumPath = makeThumbnail(uploadPath, savedPath, savedName);

		return thumPath;
	}

	private static String makeThumbnail(String uploadPath, // c://zzz/upload
			String path, // /2019/02/13
			String fileName) throws IOException {// ?λ³? ??Ό ?΄λ¦?

		// ?λ³? ?΄λ―Έμ?? ?°?΄??λ₯? κ°?? Έ??? κ°?? ?΄λ―Έμ?λ₯? λ§λ¬
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));

		// ?Έλ‘? 100?¬κΈ°μ κ³ μ ??¬ κ°?λ‘λλΉλ ???Όλ‘? μ‘°μ ??λ‘? ??¬ thumbnail?°?΄??λ₯? λ§λ¬
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);

		// thumbnail ??Όλͺμ λ§λ¬(s_λ₯? λΆμ)
		String thumbnailName = uploadPath + path + "/" + "s_" + fileName;

		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

		// λ§λ€?΄μ§? thumbnail ??Ό? destImg ?°?΄??λ₯? ?£?
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);

		return path + "/" + "s_" + fileName; // thumbnail?© ??Ό μ£Όμλ₯? ?κΉ?
	}

	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();

		String yearPath = "/" + cal.get(Calendar.YEAR);
		String monthPath = String.format("%s/%02d", yearPath, cal.get(Calendar.MONTH) + 1);
		String datePath = String.format("%s/%02d", monthPath, cal.get(Calendar.DATE)); // ? ? ?Ό

		// 2019/02/13
		// 2019
		// 02
		// 13
		makeDir(uploadPath, yearPath, monthPath, datePath);

		return datePath;
	}

	private static void makeDir(String uploadPath, String... paths) {
		for (String path : paths) {
			File dirPath = new File(uploadPath + path);
			if (dirPath.exists() == false) {
				dirPath.mkdirs();
			}
		}
	}
}
