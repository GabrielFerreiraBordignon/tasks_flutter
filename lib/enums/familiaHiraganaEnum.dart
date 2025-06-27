import 'hiraganaEnum.dart';

enum FamiliaHiraganaEnum{
  a([HiraganaEnum.a, HiraganaEnum.i, HiraganaEnum.u, HiraganaEnum.e, HiraganaEnum.o]),
  ka([HiraganaEnum.ka, HiraganaEnum.ki, HiraganaEnum.ku, HiraganaEnum.ke, HiraganaEnum.ko]),
  sa([HiraganaEnum.sa, HiraganaEnum.shi, HiraganaEnum.su, HiraganaEnum.se, HiraganaEnum.so]),
  ta([HiraganaEnum.ta, HiraganaEnum.tchi, HiraganaEnum.tsu, HiraganaEnum.te, HiraganaEnum.to]),
  na([HiraganaEnum.na, HiraganaEnum.ni, HiraganaEnum.nu, HiraganaEnum.ne, HiraganaEnum.no]),
  ha([HiraganaEnum.ha, HiraganaEnum.hi, HiraganaEnum.fu, HiraganaEnum.he, HiraganaEnum.ho]),
  ma([HiraganaEnum.ma, HiraganaEnum.mi, HiraganaEnum.mu, HiraganaEnum.me, HiraganaEnum.mo]),
  ra([HiraganaEnum.ra, HiraganaEnum.ri, HiraganaEnum.ru, HiraganaEnum.re, HiraganaEnum.ro]),
  ya([HiraganaEnum.ya, HiraganaEnum.yu, HiraganaEnum.yo]),
  wa([HiraganaEnum.wa, HiraganaEnum.wo, HiraganaEnum.n]);

  final List<HiraganaEnum> hiraganas;

  const FamiliaHiraganaEnum(this.hiraganas);
}