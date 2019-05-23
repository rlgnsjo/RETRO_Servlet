package com.retro.dto;



public class PageMakerDTO {  // 페이지네이션의 이동처리과정을 위해 만들어준 dto
	private int totalCount;	// 전체데이터 개수  즉 총 게시글수! 280개임.
	private int startPage;	// 시작 페이지 번호
	private int endPage;	// 끝 페이지 번호 1~10번 버튼에 있을경우 마지막페이지 
	private boolean prev;  // 이전 페이지
	private boolean next; // 이후 페이지
	private int displayPageNum = 10;	// 화면에 보여지는 게시글수
	private int finalPage;  // 총게시글수를 10분의 1로 나눈값 즉 28임. 
	private CriteriaDTO criDto;  // 페이지값등 값종 바인딩변수값이 들어가있음.
	
	
	public int getTotalCount() {
		
		return totalCount;
	}
	public void setTotalCount(int totalCount) {  // 현재 여기에는 전체게시글 개수가 담겨져있음. 280개
		this.totalCount = totalCount;
		
		calcData();	  // 해당클래스에 있으니 사용가능
	}
	
	private void calcData() {     //criDto에는 내가 입력한 변수값 ex)3이 입력되 있고 displayPageNum에는 10이 할당되 있다. 
		endPage = (int)Math.ceil(criDto.getPage() / (double)displayPageNum) * displayPageNum;
				//(3 / 10) (0.3 Math.ceil과정)=> 1* 10 = 10 
		//  ex:3가 입력되었을때     Math.ceil 소수점값이 있을때 소수점값에 상관없이 1로 올림해주는 역할.           
				
		startPage = (endPage - displayPageNum) + 1;
		//startPage=1   
		int tempEndPage = (int)(Math.ceil(totalCount / (double)(criDto.getPerPageNum() / criDto.getPage())));  
				                                       
		if(endPage > tempEndPage) {
		   endPage = tempEndPage;	
		}
		
		prev = startPage == 1 ? false : true;
		next = (endPage * (criDto.getPerPageNum()/criDto.getPage())) >= totalCount ? false :true;
		// endPage는 10임 totalCount는 280임.
		finalPage =	(int)(Math.ceil(totalCount /(double)displayPageNum));
		// totalCount 280 이고 displayPageNum는 10인데 해당값을 나눠서 finalPage에 할당.  calcDate로 이동
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
