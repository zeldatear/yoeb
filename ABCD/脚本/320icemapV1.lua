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
SetUseWeapon("ذ��")
--�����Լ��õ�װ������ 

g_attackDis=50				--��������
g_duobiHpVal=0.2

--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч

SetNeedSkillLineData(96,"����,nil|����,nil|����֮��,nil|�rѪ��ŭ,nil",nil,5,nil)
SetNeedSkillLineData(97,"���g����,nil|�܂��rʩ���o��,nil|���m�r�g���L�o��,nil|䓽��F��,nil",nil,9,nil)
SetNeedSkillLineData(98,"�̿�ӡӛ,nil|ޒ��֮��,nil|���ٹ���,nil|���Еrӡӛ�o��,nil",nil,10,nil)
SetNeedSkillLineData(99,"��˪��,nil|��˪֮��,nil|����,nil",nil,3,nil)
SetNeedSkillLineData(100,"��˪֮��,nil|���ش���o��,nil|ҹ���o��,nil|Ԫ�ع�������o��,nil|���w�o��,nil|���l�o��,nil",nil,2,nil)


--AddAttackSkillData(name,className,noLine,dis,monShuXingCnt)--��ӹ�������   ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��
--name=������ �ַ�����    ����nil���� ��Ҫȷ�������������
--className=�������� �ַ�����  ����nil���� ��Ҫȷ�����������
--noLine= �߼��� ����ֱ�߾��ܹ��� �߼��� trueΪ�� false ��nil Ϊ�� �����ٻ���ŭ������ǲ���ֱ�߾��ܹ�����
--dis ������ ���ܾ��� ����nil���� Ĭ��Ϊ g_attackDis ���õľ���
--monShuXingCnt ������ ������������������������Ч ���ǰ���������������������ɫ�� (0-1Ϊ�׹� 2-9Ϊ���� 10������Ϊ��� ��ʵҲ���Ǻ�׼ȷ���������ð�) �׹���0 ������2 �����10
--��ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��
AddAttackSkillData("��˪֮��","Vaal Lightning Strike")
AddAttackSkillData("��ͨ����","melee")
AddAttackSkillData("��˪��","melee",nil,nil,10)


--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�
SetSkillLimitMaxLv("�܂��rʩ���o��",nil,1)
SetSkillLimitMaxLv("���g����",nil,1)
SetSkillLimitMaxLv("䓽��F��",nil,10)
SetSkillLimitMaxLv("����",nil,3)

-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--�������ʱ�ٻ����������� mapClassName=����ͼ���� name=������ className=��������

--SetNeedFlaskData(pos,flask,modsData,minLv)--����ҩƿ�ڷ�
SetNeedFlaskData(1,"��������ˎ��","���������,FlaskPartialInstantRecovery3|�ܷ�֮,FlaskBleedCorruptingBloodImmunity1",90)
SetNeedFlaskData(2,"��������ˎ��","���е�,FlaskPartialInstantRecovery1|����֮FlaskIgniteImmunity1",90)
SetNeedFlaskData(3,"���ˎ��","�W�ߵ�,FlaskChargesUsed2|����֮,FlaskBuffCriticalChanceWhileHealing2_",90)
SetNeedFlaskData(4,"�Ͼ�ˎ��","�{��T��,FlaskIncreasedDuration2|��֮,FlaskBuffAttackSpeedWhileHealing2_____",90)
SetNeedFlaskData(5,"ˮ�yˎ��","�{��T��,FlaskEffectReducedDuration2|�̈F֮,JunMaster2LocalFlaskSkillManaCostDuringFlaskEffect1",90)


--SetNeedFlaskData(1,"��������ˎ��","nil")
--SetNeedFlaskData(2,"��������ˎ��","nil")
--SetNeedFlaskData(3,"���ˎ��","nil")
--SetNeedFlaskData(4,"�Ͼ�ˎ��","nil")
--SetNeedFlaskData(5,"ˮ�yˎ��","nil")


g_addHpVal=0.7--HP���ڶ��ٳԺ�ҩ
g_addMpVal=0.5--MP���ڶ��ٳ���ҩ

---------------------------------------��װ����
--SetAtuoChangeEquipData(job,pos,name,val,yijie) ���㷽ʽ���� �����������ֵ���Ա���ֵ  ����װ���߾ͻ�������
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--pos ��λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) ���������м���|����
--name ������ ֧����Ϸ�ڵ�װ�������� �����������Զ�����(�����˺������ס����ܡ����ܡ��������ܶ�)
--val ����ֵ ֧��С��
--nType ��װ���� 0��nil����Ϊһֱ��Ч 1Ϊ��ͼʱ����Ч 2Ϊ���ʱ����Ч


--����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����

--����--��ɫ �·�  �t�G�{
SetZhengTiColorVarData(2,3,2,1,nil,850,true)
SetZhengTiColorVarData(2,1,5,0,nil,630,true)
SetZhengTiColorVarData(2,1,4,0,nil,600,true)
SetZhengTiColorVarData(2,0,4,1,nil,580,true)
SetZhengTiColorVarData(2,0,5,0,nil,550,true)
SetZhengTiColorVarData(2,0,4,0,nil,450,true)
SetZhengTiColorVarData(2,0,3,1,nil,400,true)
SetZhengTiColorVarData(2,1,3,0,nil,350,true)
SetZhengTiColorVarData(2,0,3,0,nil,300,true)
SetZhengTiColorVarData(2,0,2,1,nil,250,true)
SetZhengTiColorVarData(2,0,2,0,nil,200,true)
SetZhengTiColorVarData(2,0,1,1,nil,150,true)
SetZhengTiColorVarData(2,0,1,0,nil,100)
SetZhengTiColorVarData(2,1,0,0,nil,60)
SetZhengTiColorVarData(2,0,0,1,nil,50)

SetZhengTiColorVarData(3,0,2,1,nil,30,true)
SetZhengTiColorVarData(3,0,2,0,nil,20,true)
SetZhengTiColorVarData(3,0,1,0,nil,10)


SetZhengTiColorVarData(5,0,4,0,nil,400,true)
SetZhengTiColorVarData(5,0,3,1,nil,300,true)
SetZhengTiColorVarData(5,0,2,0,nil,200,true)
SetZhengTiColorVarData(5,0,1,0,nil,100)

SetZhengTiColorVarData(9,3,0,1,nil,400,true)
SetZhengTiColorVarData(9,1,0,3,nil,350,true)
SetZhengTiColorVarData(9,1,0,2,nil,300,true)
SetZhengTiColorVarData(9,1,0,1,nil,200,true)
SetZhengTiColorVarData(9,0,0,1,nil,100)

SetZhengTiColorVarData(10,0,3,1,nil,400,true)
SetZhengTiColorVarData(10,0,3,0,nil,300,true)
SetZhengTiColorVarData(10,0,2,0,nil,200,true)
SetZhengTiColorVarData(10,0,1,0,nil,100)



--AddShengJiZhuangBeiGoodsData("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",0,30,0)--������Ч ����50�����õ����ɫװ��
--AddShengJiZhuangBeiGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,30,0)--������Ч ����50�����ø�������ɫװ��

--������+ϡ���� ���ʱ����Ч
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_rarity_+%",0.5,2)--���A��Ʒ����Ʒ�| +%
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_quantity_+%",1.5,2)--��Ʒ���䔵������ %



--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--������ͼʱ���� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� shengjiMapClassName=Ҫˢ�ĵ�ͼ���� needLv=���������ټ�Ϊֹ
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--�� �������������� ��ʱ��ˢ����ʥ�ص�50���ٽ�����һ����
SetTaskShengJiData("a9q3",nil,"2_9_1",68,true)--�� ���L���w�� ��ʱ��ˢ�BѪˮ����68���ٽ�����һ����

SetTaskMiGongData("a8q7",nil,1)--���ڵ���a9q1�� ���Թ�1
SetTaskMiGongData("a10q1",nil,2)--���ڵ���a10q1 ���Թ�2
SetTaskMiGongDataByLv(70,3)--���ڵ���80�� ���Թ�3

g_openQlkMaxMapTianFuCnt=nil--��ֵ�� �������츳�󲻿�����������nilΪһֱ��
g_useMinLvMapTianFuCnt=70--��ͼ�츳�����ٵ�� �ʹӵͽ׵�ͼ��ʼȡ
SetYiJieShuaTuModeByMapCnt(60,nil,2)--)--���ݲֿ���ĵ�ͼ�����������ˢͼģʽ ����Ӷ�� ���Ǵӵ�ͼ�����ൽ�����жϵ�
SetOpenMapMasterData(3)

SetChangeLimitCnt("����|�·�|ͷ��|����|Ь��",2)
SetChangeLimitCnt("����",3)
SetChangeLimitCnt("����|��ָ",4)


--SetNeedAddTianFu(tfStr)--�����츳�ӵ� 
--SetNeedAddTianFu("����=attack_speed568-Ͷ�������������|dexterity990-����|dexterity992-����|dexterity995-����|intelligence957-�ǻ�|aura_area_of_effect1203-��hЧ������|reduced_mana_reservation1199-����Ч��|aura_effect_reservation_cost_notable1558-����|dexterity989-����|dexterity872-����|weapon_elemental_damage1263-����Ԫ�؂���|weapon_elemental_damage1264-����Ԫ�؂���|weapon_ele_notable1700-��Ȼ֮��|life1119-�W�ܺ�����|life1118-�W�ܺ�����|life1117-����ͨ��|mastery_life130-�W�܌���-57074|dexterity976-����|attack_damage_notable2120-ɽ؈֮�`|dexterity969-����|dexterity870-����|claws_of_the_pride489-ֱ�X|one_handed_damage637-����Ԫ�؂���|shield_mastery440-��Ȼ��һ|one_handed_damage636-����Ԫ�؂���|finesse993-����|stun_recovery543-�����ͱ��╞ѣ|avoid_stun553-��ľ֮��|reduced_mana1480-ħ����ˎ��Ч��|mana1478-ԭʼ����|life1412-����|alchemist532-ˎ�݌W|life1216-����|dexterity862-����|dexterity864-����|accuracy582-�����c�����ٶ�|accuracy589-���к͹����ٶ�|deadeye590-����|mastery_accuracy3-���Ќ���-51147|evasion_per_frenzy_charge535-ÿ�w��ŭ���W��|maximum_frenzy_charges525-����|dexterity1986-����|jewel_slot1960-���A�錚���|critical_strike_chance625-������|critical_strike_chance624-������|heartseeker626-������|dexterity861-����|weapon_elemental_damage2163-����Ԫ�؂���|weapon_elemental_damage2161-����Ԫ�؂�����������B�C��|weapon_elemental_damage2162-����Ԫ�؂�����������B�C��|weapon_elemental_damage_notable2165-̫��֮��|dexterity873-����|dexterity858-����|dexterity968-����|weapon_cold_damage212-�����������|weapon_cold_damage211-�����������|ice_bite433-�̹Ǻ���|dexterity877-����|savant937-ԭҰ�ǻ�|dexterity875-����|mana_leech2046-�����cħ��͵ȡ|life_leech2055-����͵ȡ|life_leech_notable2056-����̓��|mana_leech2047-ħ��͵ȡ|mana_leech_notable2048-���A��ȡ|dexterity835-����|axe_damage_accuracy_crit2473-���Ă���|axe_damage_accuracy_crit2472-���Ă���������|axe_damage_accuracy_crit_notable2476-�_��֮��|dexterity844-����|dexterity840-����|mana_on_kill1476-ħ���͹�h����Ч��|mana_on_kill_notable1704-��g|mastery_mana171-ħ������-12119|dexterity838-����|dexterity1990_-����|maximum_frenzy_charges527-Ұ��֮��|jewel_slot1975-���A�錚���|strength1005-����|iron_reflexes1137-���w|life1213-����|golem's_blood1088-ħ��Ѫ�y |armour_and_evasion1454-�o�׺��W��|leather_and_steel1458-ѸӰ���g|strength832-����|strength802-����|strength794-����|strikes_damage2731_-��������|strikes_range2732-���������ʹ������|strikes_range2733-���������ʹ������|blight_special_notable6-����֮ŭ|mastery_attack17-���􌣾�-39154|strength778-����|savant954-�o��|aura_effect1555-��hЧ��|aura_area_of_effect1202-��hЧ������|general_aura_notable1791-��Դ|aura_banner2426-����Ч��|strength793-����|call_to_arms_keystone2691-���b�ن�|axe_damage_accuracy_crit2475-���Ă����ͱ�����|axe_damage_accuracy_crit2474-���Ă����ͱ�����|mastery_leech159-͵ȡ����-53627|axe_damage_and_speed2466_-���Ă����͹����ٶ�|axe_damage_and_attack_speed1082-���Ă����͹����ٶ�|axe_damage_and_attack_speed518-���Ă����͹����ٶ�|hatchet_master104-�����ڎ�|melee_crit2381-���𱩓���|melee_crit2382-���𱩓��ӳ�|melee_crit_notable2384-֫��|mastery_criticals64-���􌣾�-2987|frenzy_charges2419-ÿ�w��ŭ���W��|frenzy_charges2418-�Ƅ��ٶ�|frenzy_charges2420-ÿ�w��ŭ�򹥓��ٶ�|frenzy_charges_notable2421-������֮ʹͽ|mastery_charges50-���܌���-40307|mastery_life146-��������-47642|mastery_life138-��������-64381|")
--SetNeedAddTianFu("��������=AscendancyRaider5-�W�ܡ��͹�Ч��|AscendancyRaider6-�O���M��|AscendancyRaider3-�W�ܡ���ŭ����m�r�g|AscendancyRaider2-�I�C��֮;|AscendancyRaider1-�W�ܡ���ŭ����m�r�g|AscendancyRaider4-��¾ʹͽ|") 
SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_path_11-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_boss_adjacent_maps_8-�����؈D����C��|atlas_kirac_1_10-�������΄ՙC��|atlas_kirac_1_9-�������΄ՙC��|atlas_zana_1_6-���c�ɲ�|atlas_kirac_1_8_-�������΄ՙC��|atlas_kirac_1_7-�������΄ՙC��|atlas_path_96-�����}�u�؈D|atlas_map_tier_5_1-���A�؈D�C��|atlas_map_tier_5_2-���A�؈D�C��|atlas_map_tier_4_1-���A�؈D�C��|atlas_map_tier_3_1-���A�؈D�C��|atlas_map_tier_3_2-���A�؈D�C��|atlas_path_94-�����}�u�؈D|atlas_map_drops_8-�����}�u�؈D|atlas_path_92-�����}�u�؈D|atlas_path_61-��Ʒ����|atlas_path_44-��Ʒ����|atlas_path_35-��Ʒ����|atlas_path_90-�����}�u�؈D|atlas_keystone_smallnodes_1-����֮·|atlas_path_38-�����؈D����C��|atlas_path_21-�����؈D����C��|atlas_path_27-�����؈D����C��|atlas_map_tier_2_1-���A�؈D�C��|atlas_map_tier_2_2-���A�؈D�C��|atlas_path_37-�����؈D����C��|atlas_path_30-�����؈D����C��|atlas_path_18-�����؈D����C��|atlas_map_tier_1_2_-���A�؈D�C��|atlas_map_tier_1_1-���A�؈D�C��|atlas_path_15-�����؈D����C��|atlas_path_2-�����؈D����C��|atlas_kirac_2_1-�������΄ՙC��|atlas_kirac_2_2-�������΄ՙC��|atlas_kirac_2_3-�������΄ՙC��|atlas_path_6-�����؈D����C��|atlas_path_8-�����؈D����C��|atlas_path_5-�����؈D����C��|atlas_path_13-�����؈D����C��|atlas_path_10-�����؈D����C��|atlas_path_19-�����؈D����C��|atlas_path_1-�����؈D����C��|atlas_path_20-�����؈D����C��|atlas_path_9-�����؈D����C��|atlas_path_22-�����؈D����C��|atlas_path_12-�����؈D����C��|atlas_path_24_-�����؈D����C��|atlas_path_16-�����؈D����C��|atlas_path_25_-�����؈D����C��|atlas_map_drops_4-�����}�u�؈D|atlas_path_83-�����}�u�؈D|atlas_map_drops_5-�����}�u�؈D|atlas_path_84-�����}�u�؈D|atlas_path_95-�����}�u�؈D|atlas_map_drops_9-�����}�u�؈D|atlas_map_drops_15-�����}�u�؈D|atlas_path_82-�����}�u�؈D|atlas_map_drops_14-�����}�u�؈D|atlas_path_85-�����}�u�؈D|atlas_map_drops_16-�����}�u�؈D|atlas_map_drops_1-�����}�u�؈D|atlas_map_drops_2-�����}�u�؈D|atlas_map_drops_20-�����}�u�؈D|atlas_path_93-�����}�u�؈D|")