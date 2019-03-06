package com.psw.domain;

import com.psw.domain.Criteria;

public class SearchCriteria extends Criteria {
	private String searchType; // t(title), c(content), w(writer)
	private String keyword;// java, 이쁘니
	private boolean isOpenAll;// 공개 목록만 보이면 true 모두보이면 false

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public boolean isOpenAll() {
		return isOpenAll;
	}

	public void setOpenAll(boolean isOpenAll) {
		this.isOpenAll = isOpenAll;
	}

	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + ", isOpenAll=" + isOpenAll + "]";
	}

}
