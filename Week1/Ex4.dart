String astrologicalSignNames(int day, String month) {
  if((month=="Mar"&& day>=21 && day <=31)||(month=="Mar"&& day>=1 && day <=20)) {
    return "Aries";
  }
  else if((month=="Apr"&& day>=21 && day <=30)||(month=="May"&& day>=1 && day <=20)) {
    return "Taurus";
  }
  else if((month=="May"&& day>=21 && day <=31)||(month=="Jun"&& day>=1 && day <=21)) {
    return "Gemini";
  }
  else if((month=="Jun"&& day>=22 && day <=30)||(month=="Jul"&& day>=1 && day <=22)) {
    return "Cancer";
  }
  else if((month=="Jul"&& day>=23 && day <=31)||(month=="Aug"&& day>=1 && day <=22)) {
    return "Leo";
  }
  else if((month=="Aug"&& day>=23 && day <=31)||(month=="Sep"&& day>=1 && day <=21)) {
    return "Virgo";
  }
  else if((month=="Sep"&& day>=22 && day <=30)||(month=="Oct"&& day>=1 && day <=22)) {
    return "Libra";
  }
  else if((month=="Oct"&& day>=23 && day <=31)||(month=="Nov"&& day>=1 && day <=22)) {
    return "Scorpio";
  }
  else if((month=="Nov"&& day>=21 && day <=30)||(month=="Dec"&& day>=1 && day <=21)) {
    return "Sagittarius";
  }
  else if((month=="Dec"&& day>=22 && day <=31)||(month=="Jan"&& day>=1 && day <=20)) {
    return "Capricorn";
  }
  else if((month=="Jan"&& day>=21 && day <=31)||(month=="Feb"&& day>=1 && day <=19)) {
    return "Aquarius";
  }
  else if((month=="Feb"&& day>=20 && day <=29)||(month=="Mar"&& day>=1 && day <=20)) {
    return "Pisces";
  }
  return "Day not exist!!";
}
void main() {
  print(astrologicalSignNames(2, "Jul"));
}