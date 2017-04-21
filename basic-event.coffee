# 배경 레이어 생성 
bg = new BackgroundLayer backgroundColor: "#FF00FF" # 배경색 정의

# layerA를 감싸는 래퍼 레이어 생성
wrapper = new Layer
    height: 100 # 높이
    borderRadius: 10 # 보더 반지름
    x : Align.center # 부모의 중앙으로 정렬
    y : Align.center # 부모의 중앙으로 정렬

# 레이어 생성
layerA = new Layer
    parent: wrapper # 부모 레이어를 wrapper로 지정
    width: 100  # 너비
    height: 100 # 높이
    backgroundColor: "#fff" # 배경색 정의
    borderRadius: 10 # 보더 반지름

layerA.onTap -> # 탭을 하였을 때 나타나는 콜백
    print '탭을 하였다'

layerA.onScroll -> # 스크롤 레이러를 스크롤 하였을 때 나타나는 콜백
    print '스크롤을 하였다'

layerA.onSwipe -> # 스와이프 모션을 하였을 때 나타나는 콜백
    print '스와이프 모션을 하였다'


# 애니메이션과 연결이 되는 이벤트
layerA.onAnimationStart -> # 애니메이션이 시작하였을 때 나타나는 콜백
    print '애니메이션 모션이 시작되었다.'

layerA.onAnimationEnd -> # 애니메이션이 끝났을 때 나타나는 콜백
    print '애니메이션 모션이 끝났다'