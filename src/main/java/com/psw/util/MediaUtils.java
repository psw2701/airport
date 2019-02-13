package com.psw.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;

public class MediaUtils {
	private static Map<String, MediaType> mediaMap;

	static {
		mediaMap = new HashMap<>();
		mediaMap.put("gif", MediaType.IMAGE_GIF);
		mediaMap.put("png", MediaType.IMAGE_PNG);
		mediaMap.put("jpg", MediaType.IMAGE_JPEG);
	}

	public static MediaType getMediaType(String type) {
		return mediaMap.get(type.toLowerCase());
	}
}
