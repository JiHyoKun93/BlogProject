package com.pro.dto;

public class FileResponse {
	private boolean uploaded;
    private String url;
	public boolean isUploaded() {
		return uploaded;
	}
	public void setUploaded(boolean uploaded) {
		this.uploaded = uploaded;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
    
    
}
