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
	public static String uploadFile(String uploadPath, // upload경로
			String originalName, // ?��?��?���?
			byte[] fileData) throws IOException {// ?��?�� ?��?��?��

		UUID uid = UUID.randomUUID();// 중복?���? ?��?�� 고유?�� ?��값을 만듬
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
			String fileName) throws IOException {// ?���? ?��?�� ?���?

		// ?���? ?��미�??�� ?��?��??�? �??��???�� �??�� ?��미�?�? 만듬
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));

		// ?���? 100?��기에 고정?��?�� �?로너비는 ?��?��?���? 조절?��?���? ?��?�� thumbnail?��?��??�? 만듬
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);

		// thumbnail ?��?��명을 만듬(s_�? 붇임)
		String thumbnailName = uploadPath + path + "/" + "s_" + fileName;

		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

		// 만들?���? thumbnail ?��?��?�� destImg ?��?��??�? ?��?��
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);

		return path + "/" + "s_" + fileName; // thumbnail?�� ?��?�� 주소�? ?���?
	}

	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();

		String yearPath = "/" + cal.get(Calendar.YEAR);
		String monthPath = String.format("%s/%02d", yearPath, cal.get(Calendar.MONTH) + 1);
		String datePath = String.format("%s/%02d", monthPath, cal.get(Calendar.DATE)); // ?�� ?�� ?��

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
