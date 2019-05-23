package com.retro.dto;

public class CriteriaDTO { 		    // 기준 DTO! 한페지에 있는 게시글의 개수및 번호를 할당시켜주기 위해 사용
	private int page;				// 페이지 번호 기본값 1 x가 입력되면 x가 입력됨. 
	private int perPageNum;         // 한페이지에 보여줄 게시글 수를 기본적으로  10개씩 출력해주기 위해 사용. 
	private String keyword; 	    // 검색 키워드 
	private String search_option;   // 검색타입 문자열 타입은 객체생성과 동시에 초기화를 하기때문에 전역변수에 null값이 들어가 있음.
	private String sort_type;       // 정렬타입 
	
	public CriteriaDTO() {    // (5) 대입연산자를 이용하여 page와perPageNum에 1과 10 을담음.
		this.page =1;  		 //this는 전역변수를 뜻함. 
		this.perPageNum = 10;
	}  // 중가로가 끝났으니 호출한곳으로 다시 돌아감.  viewtable 액션으로 이동. 
		

	public CriteriaDTO(int page, int perPageNum, String keyword, String search_option, String sort_type) {
		super();
		this.page = page;
		this.perPageNum = perPageNum;
		this.keyword = keyword;
		this.search_option = search_option;
		this.sort_type = sort_type;
	}



	public int getPage() {
		return page;
	}

	public void setPage(int page) {  // (8) viewtable 액션에 할당된 값을 할당! 호출한곳이 viewtableaction으로 다시 돌아감.
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;  
		
	}
	
	public int getPageStart() {               
		return (((this.page -1 ) * perPageNum) +1);  
	}

	public int getPerPageNum() {  //perpagenum에는 10값이 할당되 있음.
		return this.page * perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getSearch_option() {
		return search_option;
	}

	public void setSearch_option(String search_option) {
		this.search_option = search_option;
	}

	public String getSort_type() {
		return sort_type;
	}

	public void setSort_type(String sort_type) {// 10
		this.sort_type = sort_type;
	}
	
}
	 
