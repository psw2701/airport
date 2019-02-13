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
	public static String uploadFile(String uploadPath, // uploadê²½ë¡œ
			String originalName, // ?ŒŒ?¼?´ë¦?
			byte[] fileData) throws IOException {// ?ŒŒ?¼ ?°?´?„°

		UUID uid = UUID.randomUUID();// ì¤‘ë³µ?˜ì§? ?•Š?Š” ê³ ìœ ?•œ ?‚¤ê°’ì„ ë§Œë“¬
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
			String fileName) throws IOException {// ?›ë³? ?ŒŒ?¼ ?´ë¦?

		// ?›ë³? ?´ë¯¸ì??˜ ?°?´??ë¥? ê°?? ¸???†Œ ê°??ƒ ?´ë¯¸ì?ë¥? ë§Œë“¬
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));

		// ?„¸ë¡? 100?¬ê¸°ì— ê³ ì •?•˜?—¬ ê°?ë¡œë„ˆë¹„ëŠ” ??™?œ¼ë¡? ì¡°ì ˆ?•˜?„ë¡? ?•˜?—¬ thumbnail?°?´??ë¥? ë§Œë“¬
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);

		// thumbnail ?ŒŒ?¼ëª…ì„ ë§Œë“¬(s_ë¥? ë¶‡ì„)
		String thumbnailName = uploadPath + path + "/" + "s_" + fileName;

		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

		// ë§Œë“¤?–´ì§? thumbnail ?ŒŒ?¼?— destImg ?°?´??ë¥? ?„£?Œ
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);

		return path + "/" + "s_" + fileName; // thumbnail?š© ?ŒŒ?¼ ì£¼ì†Œë¥? ?„˜ê¹?
	}

	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();

		String yearPath = "/" + cal.get(Calendar.YEAR);
		String monthPath = String.format("%s/%02d", yearPath, cal.get(Calendar.MONTH) + 1);
		String datePath = String.format("%s/%02d", monthPath, cal.get(Calendar.DATE)); // ?…„ ?›” ?¼

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
