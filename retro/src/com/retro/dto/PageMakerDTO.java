package com.retro.dto;



public class PageMakerDTO {
	private int totalCount;	// 전체데이터 개수  즉 총 게시글수! 280개임.
	private int startPage;	// 시작 페이지 번호
	private int endPage;	// 끝 페이지 번호
	private boolean prev;  // 이전 페이지
	private boolean next; // 이후 페이지
	private int displayPageNum = 10;	// 화면에 보여지는 블럭수
	private int finalPage;  // 총게시글수를 10분의 1로 나눈값 즉 28임. 
	private CriteriaDTO criDto;  // 페이지값등 값종 바인딩변수값이 들어가있음.
	
	
	public int getTotalCount() {
		
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();	
	}
	
	private void calcData() {
		endPage = (int)Math.ceil(criDto.getPage() / (double)displayPageNum) * displayPageNum;
		//  ex:2가 입력되었을때      (2 / 10) 0.2 => 1* 10 = 10       
				
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int)(Math.ceil(totalCount / (double)(criDto.getPerPageNum() / criDto.getPage())));  
				
		if(endPage > tempEndPage) {
		   endPage = tempEndPage;	
		}
		
		prev = startPage == 1 ? false : true;
		next = (endPage * (criDto.getPerPageNum()/criDto.getPage())) >= totalCount ? false :true;
	
		finalPage =	(int)(Math.ceil(totalCount /(double)displayPageNum));	
	}
	
	
	
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	public int getFinalPage() {
		return finalPage;
	}
	public void setFinalPage(int finalPage) {
		this.finalPage = finalPage;
	}
	public CriteriaDTO getCriDto() {
		return criDto;
	}
	public void setCriDto(CriteriaDTO criDto) {
		this.criDto = criDto;
	}
	
	@Override
	public String toString() {
		return "PageMakerDTO [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", finalPage="
				+ finalPage + "]";
	}
	
	
}
