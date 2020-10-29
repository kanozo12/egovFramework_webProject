package egovframework.kanozo.main.cmm;

public class SlideDataVO {
	private String img;
	private String content;

	public final String getImg() {
		return img;
	}

	public final void setImg(String img) {
		this.img = img;
	}

	public final String getContent() {
		return content;
	}

	public final void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "MainSlideItemVO [img=" + img + ", content=" + content + "]";
	}
}
