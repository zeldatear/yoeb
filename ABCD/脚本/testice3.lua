package.path = GetPackagePath();
local loadArr={"�Զ�����"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end


--ָ��ְҵ  Ұ���ˡ�Ů�ס����塢�����������ߡ���Ӱ��ʥ����ɮ��
g_newRoleJob="����"
--����ְҵ ��ʿ����ͽ�����������͡����ۡ�׷���ߡ������ҡ�Ԫ��ʹ���ٻ�ʦ�������ߡ���ʿ���ھ����й١�ʥ�ڡ��ػ��ߡ���Ӱ��ʦ����թʦ���ƻ��ߡ�����ʹͽ��
g_shengHuaJob="����"
--����ʹ�õ����� ֧��(��}����}צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����Ҫ�������м���|�ֿ�
SetUseWeapon("��|����")
--�����Լ��õ�װ������ 

g_needMinimizeGame=false			--��С���[�򴰿� trueΪ��С�� false��nilΪ����С��
g_imBoss=false					--����ǲֿ��ҪΪtrue �һ���Ϊfalse
g_attackDis=50					--��������
g_yiJieTimeOut=15*60			--����ͼ�ڵĳ�ʱʱ�� ��λΪ�� ���δ���þͻ���g_timeOut *�ǳ˺� ����Ϊ15����60=15����
g_timeOut=25*60					--��һ����ͼ����ʱ�䳬�����õ� �����¿�ͼ���� ��λΪ��
g_addTianFu=true				--�Զ����趨�õ����ü��츳 trueΪ�� nil��falseΪ����
g_shengJiBaoShi=true			--�Զ�������ʯ trueΪ���� nil��falseΪ������
g_sellSkillGem=false				--�Զ�������40Ʒ�ʵļ��ܱ�ʯ
g_notHuanYaoLv=82				--���ڵ��ڶ��ټ�ֻ����ɫ����ҩ 
g_needAutoChangeEquip=false		--�����Զ���װ trueΪ�� nil��falseΪ����
g_needAutoSetBaoShi=false		--�����Զ�����ʯ trueΪ�� nil��falseΪ����
g_bossGiveZhuangBei=false		--����ʱ�ֿ�Ÿ���ȱ�ٵĸ߼���װ�е�װ�� trueΪ�� falseΪ���� �ǶԲֿ�����õ�
g_xiaoHaoGetZhuangBei=false		--�һ�����װ�ֿ��������߼���װ�е�װ�� trueΪ���� falseΪ������ 

SetSaveIndex("ͨ��|�ɶѵ�ͨ��","1")
SetSaveIndex("����ͼ","2")
SetSaveIndex("����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|Ь��|ͷ��","3")
SetSaveIndex("�鱦|���˿�|�·�|��|����|��ͼ��Ƭ","2")
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��","2")
SetSaveIndex(nil,"2","�ħ�۾�","Metadata/Items/Metamorphosis/MetamorphosisEye")
SetSaveIndex(nil,"2","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"2","朽Yʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"2","����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")


g_yijieNoWhiteMonster=false		--���ʱ�Ƿ񲻴�׹� trueΪ���� nil��falseΪ��
g_yijieNoWhiteBox=true			--���ʱ�Ƿ񲻿������� trueΪ���� nil��falseΪ��
g_useYiJieWanChengDuLv=90	--ʹ�����������ɶ��Ǹ����õĵȼ������δ������ˢȫͼ
g_yiJieWanChengDu=0.9		--�����ɶ� ��ɶ��پͻ�ȥ Ϊ1��1���µ�С��
g_yongHengShiBeiLv=90		--���ڵ��ڶ��ټ�������ʯ�� 
g_needTaFangLv=90			--���ڵ��ڶ��ټ�������
g_needLianMoLv=90			--���ڵ��ڶ��ټ�����ħ
g_attackFreezeMonsterLv=90	--���ڵ��ڶ��ټ��������
g_needChuanYueLv=90			--���ڵ��ڶ��ټ���Խ��
g_needLieXiLv=90			--��춵��ڶ��ټ���ʱ���ѷ��
g_needMiWuLv=90				--���ڵ��ڶ��ټ�������

g_yuyanCnt=nil				--����������ȥԤ�ԣ�С��10���һ���nil�����ᴥ�� ����趨ȥԤ�ԣ������滹��Ҫ���ý��׸��ֿ�ŵ�Ԥ��


g_attackDis=65				--��������
g_duobiHpVal=0.2

g_yiJieLv=70				--���˶��ټ���ȥˢ���
g_checkSellMapCnt=40		--��ͼ������������Ż�����۵�ͼ
g_destroyNoUseMap=false		--�����������ò�ʹ�õĵ�ͼ nil��falseΪ������
g_mapUseFuHaoLv=75			--���ڵ��ڶ��ټ�����ͼʹ�ø���ʯ nilΪ��Զ��ʹ��
g_mapUseZengFuLv=nil			--���ڵ��ڶ��ټ�����ͼʹ������ʯ nilΪ��Զ��ʹ��
g_mapUseDianJingLv=75		--���ڵ��ڶ��ټ��԰�ͼʹ�õ��ʯ nilΪ��Զ��ʹ��
g_mapUseTuiBianLv=60		--���ڵ��ڶ��ټ��԰�ͼʹ���ɱ�ʯ nilΪ��Զ��ʹ��
g_mapUseJiHuiLv=nil			--���ڵ��ڶ��ټ��԰�ͼʹ�û���ʯ nilΪ��Զ��ʹ��
g_mapUseWaErLv=83			--���ڵ��ڶ��ټ��԰ס�����ͼʹ���߶����� nilΪ��Զ��ʹ��
g_mapUseDingZiLv=nil			--���ڵ��ڶ��ټ�ʹ����ͼ�� nilΪ��Զ��ʹ��
g_noUseMapLv=0				--��ʹ�á�������ٽ׼����ϵĵ�ͼ nil��0Ϊ���� �������ȵĵ�ͼ����

SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--���ò���ħ����������
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--�޷��ظ�
SetNoUseMapShuXing("is_blighted_map")--�����ͼ


SetGoodsCaoZuo("ذ��","0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,nil,nil,true,nil,function(gd)return not g_setAllSkillGemOk end )--���ܱ�ʯδȫ��װ���Ͼ� ʰȡ ������ɫ ��ɫ ��ɫ����ɫ����װ��


--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч


--��ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��
AddAttackSkillData("�W늼�ʸ","Lightning Arrow")
AddAttackSkillData("��ͨ����","melee")
AddAttackSkillData("�ߠ����W늼�ʸ","Vaal Lightning Arrow",false,50,10)
--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�

-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--�������ʱ�ٻ����������� mapClassName=����ͼ���� name=������ className=��������

--SetNeedFlaskData(pos,flask,modsData,minLv)--����ҩƿ�ڷ�
SetNeedFlaskData(1,"����ҩ��","nil")
SetNeedFlaskData(2,"����ҩ��","nil")
SetNeedFlaskData(3,"����ҩ��","nil")
SetNeedFlaskData(4,"ħ��ҩ��","nil")
SetNeedFlaskData(5,"����ҩ��","nil")


g_addHpVal=0.6--HP���ڶ��ٳԺ�ҩ
g_addMpVal=0.5--MP���ڶ��ٳ���ҩ


--����


--AddShengJiZhuangBeiGoodsData("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",0,30,0)--������Ч ����50�����õ����ɫװ��
--AddShengJiZhuangBeiGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,30,0)--������Ч ����50�����ø�������ɫװ��

--������+ϡ���� ���ʱ����Ч
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_rarity_+%",0.5,2)--���A��Ʒ����Ʒ�| +%
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_quantity_+%",1.5,2)--��Ʒ���䔵������ %

--�߼���װ����

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--������ͼʱ���� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� shengjiMapClassName=Ҫˢ�ĵ�ͼ���� needLv=���������ټ�Ϊֹ
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--�� �������������� ��ʱ��ˢ����ʥ�ص�50���ٽ�����һ����
SetTaskShengJiData("a9q3",nil,"2_9_1",68,true)--�� ���L���w�� ��ʱ��ˢ�BѪˮ����68���ٽ�����һ����

SetTaskMiGongData("a8q7",nil,1)--���ڵ���a9q1�� ���Թ�1
SetTaskMiGongData("a10q1",nil,2)--���ڵ���a10q1 ���Թ�2
SetTaskMiGongDataByLv(77,3)--���ڵ���80�� ���Թ�3

g_openQlkMaxMapTianFuCnt=90--��ֵ�� �������츳�󲻿�����������nilΪһֱ��
g_useMinLvMapTianFuCnt=70--��ͼ�츳�����ٵ�� �ʹӵͽ׵�ͼ��ʼȡ
SetYiJieShuaTuModeByMapCnt(70,nil,2)--)--���ݲֿ���ĵ�ͼ�����������ˢͼģʽ ����Ӷ�� ���Ǵӵ�ͼ�����ൽ�����жϵ�
SetYiJieShuaTuModeByMapCnt(40,0.7,0)
SetOpenMapMasterData(3)


SetChangeLimitCnt("����|�·�|ͷ��|����|Ь��",0)
SetChangeLimitCnt("����",0)
SetChangeLimitCnt("����|��ָ",0)


--SetNeedAddTianFu(tfStr)--�����츳�ӵ� 
SetNeedAddTianFu("����=evasion731-�W�ܺ�����|")
SetNeedAddTianFu("��������=AscendancyDeadeye7-Ͷ���������Ͷ�����ٶ�|AscendancyDeadeye8-�ѓ�|AscendancyDeadeye18-Ͷ���������Ͷ�����ٶ�|AscendancyDeadeye6-�o�ޏ�ˎ|AscendancyDeadeye3-Ͷ��������������ٶ�|AscendancyDeadeye14-���L|") 
SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_path_11-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_boss_adjacent_maps_8-�����؈D����C��|atlas_kirac_1_10-�������΄ՙC��|atlas_kirac_1_9-�������΄ՙC��|atlas_zana_1_6-���c�ɲ�|atlas_kirac_1_8_-�������΄ՙC��|atlas_kirac_1_7-�������΄ՙC��|atlas_path_96-�����}�u�؈D|atlas_path_94-�����}�u�؈D|atlas_map_drops_8-�����}�u�؈D|atlas_path_92-�����}�u�؈D|atlas_path_61-��Ʒ����|atlas_path_44-��Ʒ����|atlas_path_35-��Ʒ����|atlas_path_90-�����}�u�؈D|atlas_keystone_smallnodes_1-����֮·|atlas_path_37-�����؈D����C��|atlas_path_30-�����؈D����C��|atlas_path_18-�����؈D����C��|atlas_path_15-�����؈D����C��|atlas_path_2-�����؈D����C��|atlas_kirac_2_1-�������΄ՙC��|atlas_kirac_2_2-�������΄ՙC��|atlas_kirac_2_3-�������΄ՙC��|atlas_map_tier_5_1-���A�؈D�C��|atlas_map_tier_5_2-���A�؈D�C��|atlas_map_tier_3_1-���A�؈D�C��|atlas_keystone_enhanced_kirac_crafts-���d�·|atlas_map_tier_3_2-���A�؈D�C��|atlas_map_tier_4_2-���A�؈D�C��|atlas_map_tier_4_1-���A�؈D�C��|atlas_path_17-�����؈D����C��|atlas_map_tier_2_1-���A�؈D�C��|atlas_map_tier_2_2-���A�؈D�C��|atlas_path_38-�����؈D����C��|atlas_path_21-�����؈D����C��|atlas_path_27-�����؈D����C��|atlas_path_28-�����؈D����C��|atlas_map_tier_1_2_-���A�؈D�C��|atlas_map_tier_1_1-���A�؈D�C��|atlas_path_14-�����؈D����C��|atlas_path_26-�����؈D����C��|atlas_path_25_-�����؈D����C��|atlas_path_16-�����؈D����C��|atlas_path_24_-�����؈D����C��|atlas_path_12-�����؈D����C��|atlas_path_22-�����؈D����C��|atlas_path_13-�����؈D����C��|atlas_path_8-�����؈D����C��|atlas_path_9-�����؈D����C��|atlas_path_20-�����؈D����C��|atlas_path_1-�����؈D����C��|atlas_path_19-�����؈D����C��|atlas_path_10-�����؈D����C��|atlas_path_6-�����؈D����C��|atlas_path_5-�����؈D����C��|atlas_path_30_1-�����؈D����C��|atlas_map_drops_1-�����}�u�؈D|atlas_map_drops_10-�����}�u�؈D|atlas_map_drops_11-�����}�u�؈D|atlas_path_4-�����؈D����C��|atlas_path_7-�����؈D����C��|atlas_path_88-�����}�u�؈D|atlas_map_drops_12_-�����}�u�؈D|atlas_path_87-�����}�u�؈D|atlas_map_drops_13-�����}�u�؈D|atlas_map_drops_16-�����}�u�؈D|atlas_map_drops_15-�����}�u�؈D|atlas_path_82-�����}�u�؈D|atlas_map_drops_14-�����}�u�؈D|atlas_path_85-�����}�u�؈D|atlas_map_drops_4-�����}�u�؈D|atlas_path_83-�����}�u�؈D|atlas_map_drops_5-�����}�u�؈D|atlas_path_84-�����}�u�؈D|")
