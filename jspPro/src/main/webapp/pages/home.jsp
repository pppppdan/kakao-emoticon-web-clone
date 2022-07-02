<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카카오 이모티콘샵</title>
<link rel="shortcut icon" href="../assets/icons/e_16x16.ico" />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="../assets/css/style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<div class="kakao-wrap">
      <!-- Top Banner -->
      <aside class="topbnr">
        <div class="topbnr__inner">
          <a class="topbnr__link" href="https://my.kakao.com/product/EMOTICON001?t_src=emoticon&t_ch=webstore&t_obj=web_gnb_banner" target="_blank" rel="noopener noreferrer">
            <span class="topbnr__text">월 3,900원 이모티콘 무제한</span>
            <img class="topbnr__image" src="../assets/images/ico-top-banner.png" alt="탑 배너 아이콘" />
          </a>
        </div>
        <button class="btn-close-topbnr" aria-label="탑 배너 닫기">
          <span class="ico-common ico-close"></span>
        </button>
      </aside>

      <!-- Header -->
      <header class="header">
        <div class="header__inner">
          <button class="btn-open-sidemenu" aria-label="사이드메뉴 열기">
            <span class="ico-common ico-menu"></span>
            <span class="ico-menu-new"></span>
          </button>
          <h1 class="header__title">
            <a class="header__link" href="home.html">
              <span class="ico-common ico-logo">카카오 이모티콘샵</span>
            </a>
          </h1>
          <button class="btn-open-search" aria-label="검색 열기">
            <span class="ico-common ico-search"></span>
          </button>
          <button class="btn-open-profile" aria-label="사용자 프로필 열기">
            <img src="../assets/images/profile.png" alt="사용자 프로필" />
          </button>
        </div>
        <!-- Sidemenu -->
        <div class="sidemenu sidemenu--hide">
          <div class="sidemenu__inner">
            <h3 class="screen-out">사이드메뉴</h3>
            <div class="sidemenu__profile">
              <img class="sidemenu__profile__image" src="../assets/images/profile.png" alt="사용자 프로필" />
              <div class="sidemenu__profile__info">
                <span class="sidemenu__profile__name">전지지</span><br />
                <span class="sidemenu__profile__email">김현진@kakao.com</span>

              </div>
            </div>
            <ul class="sidemenu__mypage">
              <li class="sidemenu__mypage__item">
                <a class="sidemenu__mypage__link" href="buy.html">
                  <span class="ico-common ico-buy"></span>
                  <span class="sidemenu__mypage__text">구매내역</span>
                </a>
              </li>
              <li class="sidemenu__mypage__item">
                <a class="sidemenu__mypage__link" href="gift-received.html">
                  <span class="ico-common ico-gift"></span>
                  <span class="sidemenu__mypage__text">선물함</span>
                </a>
              </li>
              <li class="sidemenu__mypage__item">
                <a class="sidemenu__mypage__link" href="coupon.html">
                  <span class="ico-common ico-new"></span>
                  <span class="ico-common ico-coupon"></span>
                  <span class="sidemenu__mypage__text">쿠폰함<span class="sidemenu__mypage__count">1</span></span>
                </a>
              </li>
              <li class="sidemenu__mypage__item">
                <a class="sidemenu__mypage__link" href="like.html">
                  <span class="ico-common ico-like"></span>
                  <span class="sidemenu__mypage__text">좋아요</span>
                </a>
              </li>
            </ul>
            <ul class="sidemenu__nav">
              <li class="sidemenu__nav__item"><a href="home.html" class="sidemenu__nav__link">홈</a></li>
              <li class="sidemenu__nav__item"><a href="new.html" class="sidemenu__nav__link">신규</a></li>
              <li class="sidemenu__nav__item"><a href="hot.html" class="sidemenu__nav__link">인기</a></li>
              <li class="sidemenu__nav__item"><a href="style.html" class="sidemenu__nav__link">스타일</a></li>
            </ul>
            <ul class="sidemenu__aside">
              <li class="sidemenu__aside__item"><a href="notice.html" class="sidemenu__aside__link">새소식</a></li>
              <li class="sidemenu__aside__item"><a href="faq.html" class="sidemenu__aside__link">자주묻는 질문</a></li>
              <li class="sidemenu__aside__item"><button class="btn-open-number">이모티콘 일련번호 입력하기</button></li>
              <li class="sidemenu__aside__item"><button class="btn-logout">로그아웃</button></li>
            </ul>
          </div>
          <div class="sidemenu__corp">
            <a class="sidemenu__corp__link-home" href="home.html">
              <span class="ico-common ico-sidemenu-logo">카카오 이모티콘샵</span>
            </a>
            <a class="sidemenu__corp__link-kakao" href="https://www.kakaocorp.com/page/" rel="noopener noreferrer">@ kakao Corp</a>
          </div>
        </div>
        <!-- Search -->
        <div class="search-box search-box--hide">
          <div class="search-box__inner">
            <h3 class="screen-out">이모티콘 검색어 입력</h3>
            <form class="search-box__form">
              <div class="search-box__form__inner">
                <input class="search-box__input" type="search" placeholder="이모티콘을 검색해 보세요!" autocomplete="off" />
                <button class="btn-remove-input btn-remove-input--hide" aria-label="검색 입력값 지우기"><span class="ico-common ico-remove"></span></button>
                <button class="btn-search" type="submit" aria-label="이모티콘 검색하기"><span class="ico-common ico-search"></span></button>
              </div>
            </form>
            <button class="btn-cancel" aria-label="이모티콘 검색 취소">취소</button>
          </div>
        </div>
        <!-- Profile -->
        <div class="profile profile--hide">
          <h3 class="screen-out">사용자 프로필 정보</h3>
          <img class="profile__image" src="../assets/images/profile.png" alt="사용자 프로필" />
          <div class="profile__name">전지지</div>
          <div class="profile__email">nohack@kakao.com</div>
          <button class="btn-logout" aria-label="로그아웃">로그아웃</button>
        </div>
        <!-- Nav -->
        <nav class="nav">
          <h3 class="screen-out">메인메뉴</h3>
          <div class="nav__inner">
            <ul class="nav__list">
              <li class="nav__item nav__item--active"><a class="nav__link" href="home.html">홈</a></li>
              <li class="nav__item"><a class="nav__link" href="new.html">신규</a></li>
              <li class="nav__item"><a class="nav__link" href="hot.html">인기</a></li>
              <li class="nav__item"><a class="nav__link" href="style.html">스타일</a></li>
            </ul>
          </div>
        </nav>
        <!-- Overlay -->
        <div class="overlay overlay--hide"></div>
      </header>

      <!-- Main -->
      <main class="main">
        <div class="home">
          <div class="home__bannertab">
            <strong class="screen-out">이벤트 배너</strong>
            <ul class="home__banners">
              <li class="home__banner">
                <a class="home__banner-link" href="#">
                  <img class="home__banner-image" src="../assets/images/banner-1.gif" alt="첫 번째 메인 배너" />
                </a>
              </li>
              <li class="home__banner">
                <a class="home__banner-link" href="https://my.kakao.com/product/EMOTICON001?t_src=emoticon&t_ch=webstore&t_obj=web_main_banner" target="_blank" rel="noopener noreferrer">
                  <img class="home__banner-image" src="../assets/images/banner-2.gif" alt="두 번째 메인 배너" />
                </a>
              </li>
            </ul>
          </div>
          <div class="home__newtab">
            <div class="home__inner-newtab">
              <h2 class="home__title-newtab">
                <a class="home__title-link" href="new.html">
                  신규 이모티콘
                  <span class="ico-common ico-arr-right"></span>
                </a>
              </h2>
              <ul class="home__list-newtab">
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/27872b35eed2ae8f4c51a9b510bc2a86617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/27872b35eed2ae8f4c51a9b510bc2a867154249a3890514a43687a85e6b6cc82" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">맞는 말만 하는 분홍토끼</span>
                  </a>
                </li>
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/d27eb7ce0ca87fe4da6c441428622cff617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/d27eb7ce0ca87fe4da6c441428622cfff43ad912ad8dd55b04db6a64cddaf76d" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">토끼소녀는 댜기뿐이야!</span>
                  </a>
                </li>
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/260f75738b8a155d6dc8517fa5c218eb617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/260f75738b8a155d6dc8517fa5c218ebf43ad912ad8dd55b04db6a64cddaf76d" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">그런가봉가 #봉주르봉봉 좋다좋아</span>
                  </a>
                </li>
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/5426ce0f6a0ea1fff31c4d5be13e9258617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/5426ce0f6a0ea1fff31c4d5be13e9258f43ad912ad8dd55b04db6a64cddaf76d" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">삐악삐악 말해요 삐악이</span>
                  </a>
                </li>
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/720e8e47c98f3302411fe6b8b237e205617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/720e8e47c98f3302411fe6b8b237e205f43ad912ad8dd55b04db6a64cddaf76d" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">뽀쨔뽀쨔한 아기토끼 뭉지</span>
                  </a>
                </li>
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/27872b35eed2ae8f4c51a9b510bc2a86617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/27872b35eed2ae8f4c51a9b510bc2a867154249a3890514a43687a85e6b6cc82" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">맞는 말만 하는 분홍토끼</span>
                  </a>
                </li>
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/d27eb7ce0ca87fe4da6c441428622cff617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/d27eb7ce0ca87fe4da6c441428622cfff43ad912ad8dd55b04db6a64cddaf76d" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">토끼소녀는 댜기뿐이야!</span>
                  </a>
                </li>
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/260f75738b8a155d6dc8517fa5c218eb617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/260f75738b8a155d6dc8517fa5c218ebf43ad912ad8dd55b04db6a64cddaf76d" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">그런가봉가 #봉주르봉봉 좋다좋아</span>
                  </a>
                </li>
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/5426ce0f6a0ea1fff31c4d5be13e9258617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/5426ce0f6a0ea1fff31c4d5be13e9258f43ad912ad8dd55b04db6a64cddaf76d" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">삐악삐악 말해요 삐악이</span>
                  </a>
                </li>
                <li class="home__item-newtab">
                  <a class="home__link-newtab" href="#">
                    <img class="home__newimg-default" src="https://item.kakaocdn.net/do/720e8e47c98f3302411fe6b8b237e205617ea012db208c18f6e83b1a90a7baa7" alt="신규 이모티콘" />
                    <img class="home__newimg-hover" src="https://item.kakaocdn.net/do/720e8e47c98f3302411fe6b8b237e205f43ad912ad8dd55b04db6a64cddaf76d" alt="신규 이모티콘" />
                    <span class="home__newimg-desc">뽀쨔뽀쨔한 아기토끼 뭉지</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="home__hottab">
            <div class="home__inner-hottab">
              <h2 class="home__title-hottab">
                <a class="home__title-link" href="hot.html">
                  인기 이모티콘
                  <span class="ico-common ico-arr-right"></span>
                </a>
              </h2>
              <div class="home__list-hottab-wrapper">
                <ul class="home__list-hottab">
                  <li class="home__item-hottab">
                    <span class="home__rank home__rank--highlight">1</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">토심이는 하뜌하뜌</span>
                      <span class="home__author-hottab">토심이</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/529c2715384d53e89011d60723a3ecff617ea012db208c18f6e83b1a90a7baa7" alt="토심이는 하뜌하뜌" />
                    <img class="home__hotimg-hover" src="https://item.kakaocdn.net/do/529c2715384d53e89011d60723a3ecfff43ad912ad8dd55b04db6a64cddaf76d" alt="토심이는 하뜌하뜌 세부" />
                  </li>
                  <li class="home__item-hottab">
                    <span class="home__rank home__rank--highlight">2</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">유년기오구의 째깐한 일상</span>
                      <span class="home__author-hottab">문랩</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/48a4b0a2358bcae9e74e850d8984e5f0617ea012db208c18f6e83b1a90a7baa7" alt="유년기오구의 째깐한 일상" />
                    <img class="home__hotimg-hover" src="https://item.kakaocdn.net/do/48a4b0a2358bcae9e74e850d8984e5f0f43ad912ad8dd55b04db6a64cddaf76d" alt="유년기오구의 째깐한 일상 세부" />
                  </li>
                  <li class="home__item-hottab">
                    <span class="home__rank home__rank--highlight">3</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">포근한 연말, 스누피와 함께 해!</span>
                      <span class="home__author-hottab">피너츠</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/c6130cb62684e1cff5a25fb2a6944221617ea012db208c18f6e83b1a90a7baa7" alt="포근한 연말, 스누피와 함께 해!" />
                    <img class="home__hotimg-hover" src="https://item.kakaocdn.net/do/c6130cb62684e1cff5a25fb2a6944221f43ad912ad8dd55b04db6a64cddaf76d" alt="포근한 연말, 스누피와 함께 해! 세부" />
                  </li>
                  <li class="home__item-hottab">
                    <span class="home__rank">4</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">낭만고앵이</span>
                      <span class="home__author-hottab">조밤</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/5b042b267794163fa63459e5b84ea960617ea012db208c18f6e83b1a90a7baa7" alt="낭만고앵이" />
                    <img class="home__hotimg-hover" src="https://item.kakaocdn.net/do/5b042b267794163fa63459e5b84ea9607154249a3890514a43687a85e6b6cc82" alt="낭만고앵이 세부" />
                  </li>
                  <li class="home__item-hottab">
                    <span class="home__rank">5</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">색안경 낀 고양이</span>
                      <span class="home__author-hottab">이걸누가사</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/629d1d13902cf2a541ebe71b79b5dc80617ea012db208c18f6e83b1a90a7baa7" alt="색안경 낀 고양이" />
                    <img class="home__hotimg-hover" src="https://item.kakaocdn.net/do/629d1d13902cf2a541ebe71b79b5dc80f43ad912ad8dd55b04db6a64cddaf76d" alt="색안경 낀 고양이 세부" />
                  </li>
                </ul>
                <ul class="home__list-hottab">
                  <li class="home__item-hottab">
                    <span class="home__rank">6</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">잔망 루피3</span>
                      <span class="home__author-hottab">뽀로로</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/75e402fe47122beeed4e853466d8b943617ea012db208c18f6e83b1a90a7baa7" alt="잔망 루피" />
                    <img class="home__hotimg-hover" src="https://item.kakaocdn.net/do/75e402fe47122beeed4e853466d8b943f43ad912ad8dd55b04db6a64cddaf76d" alt="잔망 루피 상세" />
                  </li>
                  <li class="home__item-hottab">
                    <span class="home__rank">7</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">동그리 연말인사 드리옵니다</span>
                      <span class="home__author-hottab">동그리</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/715e555775af8845f5744301ccf7487a617ea012db208c18f6e83b1a90a7baa7" alt="동그리 연말인사 드리옵니다" />
                    <img class="home__hotimg-hover" src="https://item.kakaocdn.net/do/715e555775af8845f5744301ccf7487af43ad912ad8dd55b04db6a64cddaf76d" alt="동그리 연말인사 드리옵니다 상세" />
                  </li>
                  <li class="home__item-hottab">
                    <span class="home__rank">8</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">마음이는 즐거워~~~ 16</span>
                      <span class="home__author-hottab">마음이</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/dae34588aaddcad56039412c02399fac617ea012db208c18f6e83b1a90a7baa7" alt="마음이는 즐거워~~~ 16" />
                    <img class="home__hotimg-hover" src="https://item.kakaocdn.net/do/dae34588aaddcad56039412c02399facf43ad912ad8dd55b04db6a64cddaf76d" alt="마음이는 즐거워~~~ 16 상세" />
                  </li>
                  <li class="home__item-hottab">
                    <span class="home__rank">9</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">벼루기한테 까불지마랏</span>
                      <span class="home__author-hottab">&copy;funppy</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/2f4368d1aabef7371818f3c86cd2e963617ea012db208c18f6e83b1a90a7baa7" alt="벼루기한테 까불지마랏" />
                    <img class="home__hotimg-hover" src="https://item.kakaocdn.net/do/2f4368d1aabef7371818f3c86cd2e963f43ad912ad8dd55b04db6a64cddaf76d" alt="벼루기한테 까불지마랏 상세" />
                  </li>
                  <li class="home__item-hottab">
                    <span class="home__rank">10</span>
                    <div class="home__infos-hottab">
                      <span class="home__name-hottab">에비츄! 알게뭐야 지금 너무 신나는데!</span>
                      <span class="home__author-hottab">에비츄</span>
                    </div>
                    <img class="home__hotimg-default" src="https://item.kakaocdn.net/do/3dbc40f611d4ebf7181af6eca4aac040617ea012db208c18f6e83b1a90a7baa7" alt="에비츄! 알게뭐야 지금 너무 신나는데!" />
                    <img
                      class="home__hotimg-hover"
                      src="https://item.kakaocdn.net/do/3dbc40f611d4ebf7181af6eca4aac040f43ad912ad8dd55b04db6a64cddaf76d"
                      alt="에비츄! 알게뭐야 지금 너무 신나는데! 상세"
                    />
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="home__styletab">
            <div class="home__inner-styletab">
              <h2 class="home__title-styletab">
                <a class="home__title-link" href="style.html">
                  스타일
                  <span class="ico-common ico-arr-right"></span>
                </a>
              </h2>
              <div class="home__style-area">
                <div class="home__style-header">
                  <a class="home__style-header-link" href="#">
                    <span class="home__style-text home__style-text--kakao">#카카오 공식</span>
                    <span class="home__style-text home__style-text--kakao">#니니즈</span>
                  </a>
                </div>
                <ul class="home__styles">
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/de5248e20e51a0eaa623854bed516f1b617ea012db208c18f6e83b1a90a7baa7" alt="빵상망상 콥&바냐" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/397b3ce83ef2f7dd748f4e09784cfb7e617ea012db208c18f6e83b1a90a7baa7" alt="우리는 케로&베로니" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/160c4432a74a95fbeba0962422aa33ac617ea012db208c18f6e83b1a90a7baa7" alt="죠르디TV" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/d274546cd441d60874f374b44122fd4b617ea012db208c18f6e83b1a90a7baa7" alt="죠르디는 단짠단짠" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/a56e6ddd117688df80be93b1154a9856617ea012db208c18f6e83b1a90a7baa7" alt="죠르디 24시" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/ccbb46b928e6355184c6a0fdb1709838617ea012db208c18f6e83b1a90a7baa7" alt="니니즈의 볼륨을 높여요" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/227f955adec929ad3ecc353b7d6d3a28617ea012db208c18f6e83b1a90a7baa7" alt="죠르디는 앙몬드가 죠앙" />
                    </a>
                  </li>
                </ul>
              </div>
              <div class="home__style-area">
                <div class="home__style-header">
                  <a class="home__style-header-link" href="#">
                    <span class="home__style-text home__style-text--message">#메시지</span>
                    <span class="home__style-text home__style-text--message">#색다른_메시지</span>
                  </a>
                </div>
                <ul class="home__styles">
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/de5248e20e51a0eaa623854bed516f1b617ea012db208c18f6e83b1a90a7baa7" alt="빵상망상 콥&바냐" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/397b3ce83ef2f7dd748f4e09784cfb7e617ea012db208c18f6e83b1a90a7baa7" alt="우리는 케로&베로니" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/160c4432a74a95fbeba0962422aa33ac617ea012db208c18f6e83b1a90a7baa7" alt="죠르디TV" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/d274546cd441d60874f374b44122fd4b617ea012db208c18f6e83b1a90a7baa7" alt="죠르디는 단짠단짠" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/a56e6ddd117688df80be93b1154a9856617ea012db208c18f6e83b1a90a7baa7" alt="죠르디 24시" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/ccbb46b928e6355184c6a0fdb1709838617ea012db208c18f6e83b1a90a7baa7" alt="니니즈의 볼륨을 높여요" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/227f955adec929ad3ecc353b7d6d3a28617ea012db208c18f6e83b1a90a7baa7" alt="죠르디는 앙몬드가 죠앙" />
                    </a>
                  </li>
                </ul>
              </div>
              <div class="home__style-area">
                <div class="home__style-header">
                  <a class="home__style-header-link" href="#">
                    <span class="home__style-text home__style-text--illust">#일러스트</span>
                    <span class="home__style-text home__style-text--illust">#흑과백</span>
                  </a>
                </div>
                <ul class="home__styles">
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/de5248e20e51a0eaa623854bed516f1b617ea012db208c18f6e83b1a90a7baa7" alt="빵상망상 콥&바냐" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/397b3ce83ef2f7dd748f4e09784cfb7e617ea012db208c18f6e83b1a90a7baa7" alt="우리는 케로&베로니" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/160c4432a74a95fbeba0962422aa33ac617ea012db208c18f6e83b1a90a7baa7" alt="죠르디TV" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/d274546cd441d60874f374b44122fd4b617ea012db208c18f6e83b1a90a7baa7" alt="죠르디는 단짠단짠" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/a56e6ddd117688df80be93b1154a9856617ea012db208c18f6e83b1a90a7baa7" alt="죠르디 24시" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/ccbb46b928e6355184c6a0fdb1709838617ea012db208c18f6e83b1a90a7baa7" alt="니니즈의 볼륨을 높여요" />
                    </a>
                  </li>
                  <li class="home__style">
                    <a class="home__style-link" href="#">
                      <img class="home__style-image" src="https://item.kakaocdn.net/do/227f955adec929ad3ecc353b7d6d3a28617ea012db208c18f6e83b1a90a7baa7" alt="죠르디는 앙몬드가 죠앙" />
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </main>

      <!-- Footer -->
      <footer class="footer">
        <ul class="footer__services">
          <li class="footer__service"><a class="footer__service-link" href="https://e.kakao.com/policy" rel="noopener noreferrer">이용약관</a></li>
          <li class="footer__service"><a class="footer__service-link" href="https://billing-web.kakao.com/kbill/terms/service" rel="noopener noreferrer">유료이용약관</a></li>
          <li class="footer__service">
            <a class="footer__service-link" href="https://www.kakao.com/policy/privacy" rel="noopener noreferrer"><strong>개인정보처리방침</strong></a>
          </li>
          <li class="footer__service"><a class="footer__service-link" href="https://bizemoticon.kakao.com/" rel="noopener noreferrer">기업고객</a></li>
          <li class="footer__service"><a class="footer__service-link" href="https://cs.kakao.com/requests?category=278&locale=ko&node=30555&service=94" rel="noopener noreferrer">문의하기</a></li>
        </ul>
        <p class="footer__service-info">카카오 이모티콘샵에서 판매되는 콘텐츠의 저작권은 콘텐츠 제공자에게 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 처벌될 수 있습니다.</p>
        <input type="checkbox" id="footer__corp-checkbox" class="footer__corp-checkbox" hidden />
        <label class="footer__corp-label" for="footer__corp-checkbox"> &copy; kakao Corp. <span class="ico-common ico-arrow"></span> </label>
        <div class="footer__corp-wrapper">
          <ul class="footer__corp-info">
            <li class="footer__corp-title">주식회사 카카오</li>
            <li class="footer__corp-text">대표자 여민수, 조수용</li>
            <li class="footer__corp-text">사업자등록번호 120-81-47521 [사업자정보 확인]</li>
            <li class="footer__corp-text">통신판매업 신고번호 제2015-제주아라-0032호</li>
            <li class="footer__corp-text">제주특별자치도 제주시 첨단로 242(영평동)</li>
            <li class="footer__corp-text">호스팅제공자 (주)카카오</li>
          </ul>
          <ul class="footer__corp-info">
            <li class="footer__corp-title">고객센터</li>
            <li class="footer__corp-text">1577-3754 (평일10시~19시)</li>
            <li class="footer__corp-text">help.notice@kakaocorp.com</li>
          </ul>
        </div>
        <div class="footer__movetop">
          <button class="btn-movetop" aria-label="맨 위로 이동">
            <span class="ico-common ico-movetop"></span>
          </button>
        </div>
      </footer>
    </div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="../assets/js/lib/drag-scroll.js"></script>
    <script src="../assets/js/lib/throttle.js"></script>
    <script src="../assets/js/topbnr.js"></script>
    <script src="../assets/js/header.js"></script>
    <script src="../assets/js/home.js"></script>
    <script src="../assets/js/footer.js"></script>

</body>
</html>