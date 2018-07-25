package com.les.ai.util;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Properties;

@Component
public class AppProperties {

	private static Properties props;

	public AppProperties() {

		try {
			Resource resource = new ClassPathResource("/application.properties");//
			props = PropertiesLoaderUtils.loadProperties(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	/**
	 * 获取属性
	 *
	 * @param key
	 * @return
	 */
	public static String getValue(String key) {

		return props == null ? null : props.getProperty(key);

	}

	/**
	 * 获取属性
	 *
	 * @param key          属性key
	 * @param defaultValue 属性value
	 * @return
	 */
	public static String getProperty(String key, String defaultValue) {

		return props == null ? null : props.getProperty(key, defaultValue);

	}

	/**
	 * 获取properyies属性
	 *
	 * @return
	 */
	public static Properties getProperties() {
		return props;
	}

}
