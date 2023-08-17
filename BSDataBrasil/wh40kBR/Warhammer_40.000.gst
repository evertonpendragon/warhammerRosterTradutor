<?xml version="1.0" encoding="utf-8"?>
<gameSystem battleScribeVersion="2.03" gameSystemId="38ec-711c-d87f-3aec" gameSystemRevision="1" id="38ec-711c-d87f-3aec" name="Warhammer 40,000 10th Edition-BR" revision="5" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
 <publications>
  <publication id="48fc-15aa-b307-9443" name="10th Edition Core Rules" shortName="10th Ed Core"/>
  <publication hidden="false" id="8db3-575d-91b-47f8" name="Github" publisherUrl="https://github.com/BSData/wh40k-10e" shortName="BSData/wh40k-10e"/>
 </publications>
 <costTypes>
  <costType defaultCostLimit="0" hidden="false" id="51b2-306e-1021-d207" name="pts"/>
 </costTypes>
 <profileTypes>
  <profileType id="c547-1836-d8a-ff4f" name="Unit">
   <characteristicTypes>
    <characteristicType id="e703-ecb6-5ce7-aec1" name="M"/>
    <characteristicType id="d29d-cf75-fc2d-34a4" name="T"/>
    <characteristicType id="450-a17e-9d5e-29da" name="SV"/>
    <characteristicType id="750a-a2ec-90d3-21fe" name="W"/>
    <characteristicType id="58d2-b879-49c7-43bc" name="LD"/>
    <characteristicType id="bef7-942a-1a23-59f8" name="OC"/>
   </characteristicTypes>
  </profileType>
  <profileType id="f77d-b953-8fa4-b762" name="Ranged Weapons">
   <characteristicTypes>
    <characteristicType id="9896-9419-16a1-92fc" name="Range"/>
    <characteristicType id="3bb-c35f-f54-fb08" name="A"/>
    <characteristicType id="94d-8a98-cf90-183e" name="BS"/>
    <characteristicType id="2229-f494-25db-c5d3" name="S"/>
    <characteristicType id="9ead-8a10-520-de15" name="AP"/>
    <characteristicType id="a354-c1c8-a745-f9e3" name="D"/>
    <characteristicType id="7f1b-8591-2fcf-d01c" name="Keywords"/>
   </characteristicTypes>
  </profileType>
  <profileType id="9cc3-6d83-4dd3-9b64" name="Abilities">
   <characteristicTypes>
    <characteristicType id="9b8f-694b-e5e-b573" name="Description"/>
   </characteristicTypes>
  </profileType>
  <profileType id="8a40-4aaa-c780-9046" name="Melee Weapons">
   <characteristicTypes>
    <characteristicType id="914c-b413-91e3-a132" name="Range"/>
    <characteristicType id="2337-daa1-6682-b110" name="A"/>
    <characteristicType id="95d1-95f-45b4-11d6" name="WS"/>
    <characteristicType id="ab33-d393-96ce-ccba" name="S"/>
    <characteristicType id="41a0-1301-112a-e2f2" name="AP"/>
    <characteristicType id="3254-9fe6-d824-513e" name="D"/>
    <characteristicType id="893f-9000-ccf7-648e" name="Keywords"/>
   </characteristicTypes>
  </profileType>
  <profileType id="74f8-5443-9d6d-1f1e" name="Transport">
   <characteristicTypes>
    <characteristicType id="30f2-be70-861d-1b84" name="Capacity"/>
   </characteristicTypes>
  </profileType>
 </profileTypes>
 <categoryEntries>
  <categoryEntry hidden="false" id="9cfd-1c32-585f-7d5c" name="Character"/>
  <categoryEntry hidden="false" id="4f3a-f0f7-6647-348d" name="Epic Hero"/>
  <categoryEntry hidden="false" id="cf47-a0d7-7207-29dc" name="Infantry"/>
  <categoryEntry hidden="false" id="9693-cf84-fe69-37a9" name="Monster"/>
  <categoryEntry hidden="false" id="e338-111e-d0c6-b687" name="Battleline"/>
  <categoryEntry hidden="false" id="ba07-411c-2832-1f79" name="Dedicated Transport"/>
  <categoryEntry hidden="false" id="14a0-40c9-2748-ae6e" name="Mounted"/>
  <categoryEntry hidden="false" id="2d7f-1892-2fd0-e29c" name="Captain"/>
  <categoryEntry hidden="false" id="5a61-81ac-eb7c-a87e" name="Grenades"/>
  <categoryEntry hidden="false" id="aff3-d6a3-2a95-9dc" name="Imperium"/>
  <categoryEntry hidden="false" id="4ac9-fd30-1e3d-b249" name="Configuration"/>
  <categoryEntry hidden="false" id="1160-70ae-a862-b1a8" name="Unit"/>
  <categoryEntry hidden="false" id="c619-2086-bbcf-69c9" name="Fly"/>
  <categoryEntry hidden="false" id="6df-937-16bc-8c1a" name="Smoke"/>
  <categoryEntry hidden="false" id="13bf-2bee-3ae0-b414" name="Psyker"/>
  <categoryEntry hidden="false" id="dbd4-63-af05-998" name="Vehicle"/>
  <categoryEntry hidden="false" id="6dda-e157-334d-e93a" name="Walker"/>
  <categoryEntry hidden="false" id="75e8-57c4-40e3-1817" name="Transport"/>
  <categoryEntry hidden="false" id="63f1-e6e8-f6f6-a4f0" name="Aircraft"/>
  <categoryEntry hidden="false" id="19d7-9c74-2140-5851" name="Fortification"/>
  <categoryEntry hidden="false" id="d666-e2c9-b6cc-5716" name="Towering"/>
  <categoryEntry hidden="false" id="5929-ad51-d006-e008" name="Titanic"/>
  <categoryEntry hidden="false" id="4c3e-9310-a516-3590" name="Beast"/>
  <categoryEntry hidden="false" id="4c00-2578-faf5-6918" name="Chaos"/>
  <categoryEntry hidden="false" id="bb67-f191-6562-acc7" name="Faction: Chaos Knights"/>
  <categoryEntry hidden="false" id="d1d8-6ae0-1be7-e9e" name="Faction: Tyranids"/>
  <categoryEntry hidden="false" id="1015-db48-a2fa-c7da" name="Faction: Drukhari">
   <constraints>
    <constraint field="51b2-306e-1021-d207" id="4d8f-6e09-606e-788e" includeChildForces="false" includeChildSelections="true" scope="force" shared="true" type="max" value="-1"/>
   </constraints>
   <modifiers>
    <modifier field="4d8f-6e09-606e-788e" id="f5a0-b59-1410-a903" type="set" value="500">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="38de-521f-1ce0-44a0" field="selections" includeChildSelections="false" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="d62d-db22-4893-4bc0" field="selections" includeChildSelections="true" scope="force" shared="true" type="greaterThan" value="0"/>
       </conditions>
      </conditionGroup>
     </conditionGroups>
    </modifier>
    <modifier field="4d8f-6e09-606e-788e" id="2e33-3f3b-a0f6-a6bd" type="set" value="1000">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="38de-521f-1ce0-44a0" field="selections" includeChildSelections="false" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="baf8-997f-e323-a090" field="selections" includeChildSelections="true" scope="force" shared="true" type="greaterThan" value="0"/>
       </conditions>
      </conditionGroup>
     </conditionGroups>
    </modifier>
    <modifier field="4d8f-6e09-606e-788e" id="2e5f-b5f2-28bb-573e" type="set" value="1500">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="38de-521f-1ce0-44a0" field="selections" includeChildSelections="false" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="4204-82d0-908c-a62a" field="selections" includeChildSelections="true" scope="force" shared="true" type="greaterThan" value="0"/>
       </conditions>
      </conditionGroup>
     </conditionGroups>
    </modifier>
   </modifiers>
  </categoryEntry>
  <categoryEntry hidden="false" id="4378-1827-4988-be4e" name="Faction: Aeldari"/>
  <categoryEntry hidden="false" id="fa45-57e-930e-602b" name="Faction: Astra Militarum">
   <modifiers>
    <modifier field="4d8f-6e09-606e-788e" id="4ff4-f313-206c-fcb0" type="set" value="250">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="b0ae-12a5-c84-ea45" field="selections" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="d62d-db22-4893-4bc0" field="selections" includeChildSelections="true" scope="force" shared="true" type="greaterThan" value="0"/>
       </conditions>
      </conditionGroup>
     </conditionGroups>
    </modifier>
    <modifier field="4d8f-6e09-606e-788e" id="1225-b57b-bfa5-1448" type="set" value="500">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="b0ae-12a5-c84-ea45" field="selections" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="baf8-997f-e323-a090" field="selections" includeChildSelections="true" scope="force" shared="true" type="greaterThan" value="0"/>
       </conditions>
      </conditionGroup>
     </conditionGroups>
    </modifier>
    <modifier field="4d8f-6e09-606e-788e" id="3d8e-d570-a4d2-6ed8" type="set" value="750">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="b0ae-12a5-c84-ea45" field="selections" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="4204-82d0-908c-a62a" field="selections" includeChildSelections="true" scope="force" shared="true" type="greaterThan" value="0"/>
       </conditions>
      </conditionGroup>
     </conditionGroups>
    </modifier>
   </modifiers>
   <constraints>
    <constraint field="51b2-306e-1021-d207" id="4d8f-6e09-606e-788e" includeChildForces="false" includeChildSelections="true" scope="force" shared="true" type="max" value="-1"/>
   </constraints>
  </categoryEntry>
  <categoryEntry hidden="false" id="b5e4-3253-c157-54fd" name="Faction: Imperial Knights">
   <modifiers>
    <modifier field="807c-44c1-6f7d-dfb8" type="set" value="1">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="25dd-7aa0-6bf4-f2d5" field="selections" includeChildForces="false" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="4c40-ab9-54af-d290" field="selections" scope="force" shared="true" type="equalTo" value="0"/>
       </conditions>
       <conditionGroups>
        <conditionGroup type="or">
         <conditions>
          <condition childId="e4d6-1a77-132b-f39d" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="greaterThan" value="0"/>
          <condition childId="af4c-b971-a31c-669c" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="greaterThan" value="0"/>
          <condition childId="481c-3b2e-5c99-c248" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="greaterThan" value="0"/>
          <condition childId="f76f-29c1-de9-74c2" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="greaterThan" value="0"/>
         </conditions>
        </conditionGroup>
       </conditionGroups>
      </conditionGroup>
     </conditionGroups>
    </modifier>
    <modifier field="807c-44c1-6f7d-dfb8" type="set" value="3">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="25dd-7aa0-6bf4-f2d5" field="selections" includeChildForces="false" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="4c40-ab9-54af-d290" field="selections" scope="force" shared="true" type="atLeast" value="1"/>
       </conditions>
       <conditionGroups>
        <conditionGroup type="or">
         <conditions>
          <condition childId="e4d6-1a77-132b-f39d" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="equalTo" value="0"/>
          <condition childId="af4c-b971-a31c-669c" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="equalTo" value="0"/>
          <condition childId="f76f-29c1-de9-74c2" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="equalTo" value="0"/>
          <condition childId="481c-3b2e-5c99-c248" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="equalTo" value="0"/>
         </conditions>
        </conditionGroup>
       </conditionGroups>
      </conditionGroup>
     </conditionGroups>
    </modifier>
    <modifier field="807c-44c1-6f7d-dfb8" type="set" value="0">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="25dd-7aa0-6bf4-f2d5" field="selections" includeChildForces="false" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="4c40-ab9-54af-d290" field="selections" scope="force" shared="true" type="atLeast" value="1"/>
       </conditions>
       <conditionGroups>
        <conditionGroup type="or">
         <conditions>
          <condition childId="e4d6-1a77-132b-f39d" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="greaterThan" value="0"/>
          <condition childId="af4c-b971-a31c-669c" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="greaterThan" value="0"/>
          <condition childId="f76f-29c1-de9-74c2" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="greaterThan" value="0"/>
          <condition childId="481c-3b2e-5c99-c248" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="greaterThan" value="0"/>
         </conditions>
        </conditionGroup>
       </conditionGroups>
      </conditionGroup>
     </conditionGroups>
    </modifier>
   </modifiers>
   <constraints>
    <constraint field="selections" id="807c-44c1-6f7d-dfb8" includeChildForces="true" includeChildSelections="true" scope="force" shared="true" type="max" value="-1"/>
   </constraints>
  </categoryEntry>
  <categoryEntry hidden="false" id="1e42-dfae-cbdd-207d" name="Faction: Heretic Astartes"/>
  <categoryEntry hidden="false" id="fd71-afa6-b13b-7fda" name="Faction: Adepta Sororitas"/>
  <categoryEntry hidden="false" id="ee0-cf31-4fb5-6b26" name="Faction: Necrons"/>
  <categoryEntry hidden="false" id="571f-ec3a-a5a2-751a" name="Faction: Legiones Daemonica">
   <constraints>
    <constraint field="51b2-306e-1021-d207" id="f70b-465d-493f-52e3" includeChildSelections="true" scope="force" shared="true" type="max" value="-1"/>
   </constraints>
   <modifiers>
    <modifier field="f70b-465d-493f-52e3" id="4796-8c50-4a43-66c8" type="set" value="250">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="d265-877b-e03d-30ca" field="selections" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="d62d-db22-4893-4bc0" field="selections" includeChildSelections="true" scope="force" shared="true" type="greaterThan" value="0"/>
       </conditions>
      </conditionGroup>
     </conditionGroups>
    </modifier>
    <modifier field="f70b-465d-493f-52e3" id="bc6-87f4-482b-c1cd" type="set" value="500">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="d265-877b-e03d-30ca" field="selections" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="baf8-997f-e323-a090" field="selections" includeChildSelections="true" scope="force" shared="true" type="greaterThan" value="0"/>
       </conditions>
      </conditionGroup>
     </conditionGroups>
    </modifier>
    <modifier field="f70b-465d-493f-52e3" id="b336-af46-e756-ab15" type="set" value="750">
     <conditionGroups>
      <conditionGroup type="and">
       <conditions>
        <condition childId="d265-877b-e03d-30ca" field="selections" scope="primary-catalogue" shared="true" type="notInstanceOf" value="1"/>
        <condition childId="4204-82d0-908c-a62a" field="selections" includeChildSelections="true" scope="force" shared="true" type="greaterThan" value="0"/>
       </conditions>
      </conditionGroup>
     </conditionGroups>
    </modifier>
   </modifiers>
  </categoryEntry>
  <categoryEntry hidden="false" id="b2a9-ede5-7a83-4da8" name="Slaanesh"/>
  <categoryEntry hidden="false" id="ed0d-8e2a-225c-2340" name="Nurgle"/>
  <categoryEntry hidden="false" id="4bd-5ee0-f179-2fc5" name="Khorne"/>
  <categoryEntry hidden="false" id="b188-114f-6ba5-79a1" name="Tzeentch"/>
  <categoryEntry hidden="false" id="6e7-40c-58d9-e402" name="Faction: Adeptus Astartes"/>
  <categoryEntry hidden="false" id="5418-f86b-6e76-c5a" name="Faction: Adeptus Mechanicus"/>
  <categoryEntry hidden="false" id="226b-cf1e-353a-ae7f" name="Faction: Genestealer Cults"/>
  <categoryEntry hidden="false" id="bd1d-c1a5-6ca2-c791" name="Faction: World Eaters"/>
  <categoryEntry hidden="false" id="8474-765-16a9-f00d" name="Faction: Leagues of Votann"/>
  <categoryEntry hidden="false" id="9888-ddb2-a141-6037" name="Faction: Death Guard"/>
  <categoryEntry hidden="false" id="3d58-2655-391e-ecc" name="Faction: T'au Empire"/>
  <categoryEntry hidden="false" id="eea5-aeaf-bbf0-d5ee" name="Faction: Adeptus Custodes"/>
  <categoryEntry hidden="false" id="56cc-5f43-2403-8da0" name="Faction: Orks"/>
  <categoryEntry hidden="false" id="7002-1fbb-7571-e8e7" name="Faction: Thousand Sons"/>
  <categoryEntry hidden="false" id="d564-3284-bf44-b873" name="Faction: Grey Knights"/>
  <categoryEntry hidden="false" id="5128-90b-e4a5-dcbd" name="Faction: Agents of the Imperium"/>
  <categoryEntry hidden="false" id="aab1-4f05-fabe-5ba5" name="Faction: Dark Angels"/>
  <categoryEntry hidden="false" id="65e4-13-4fa8-b36c" name="Faction: Salamanders"/>
  <categoryEntry hidden="false" id="d39c-9989-db7f-d815" name="Faction: Deathwatch"/>
  <categoryEntry hidden="false" id="62ac-ef42-27b4-ae7" name="Faction: Blood Angels"/>
  <categoryEntry hidden="false" id="1a2d-2f00-c054-4dcb" name="Faction: Ultramarines"/>
  <categoryEntry hidden="false" id="a0d9-c115-2a-8330" name="Faction: Space Wolves"/>
  <categoryEntry hidden="false" id="9249-acae-2882-d95" name="Faction: Black Templars"/>
  <categoryEntry hidden="false" id="84b7-7194-3b84-1b0c" name="Faction: Raven Guard"/>
  <categoryEntry hidden="false" id="b88e-1b0c-b79f-5cdf" name="Faction: Iron Hands"/>
  <categoryEntry hidden="false" id="97aa-d0e4-71c7-96c3" name="Faction: Imperial Fists"/>
  <categoryEntry hidden="false" id="5c0e-2250-dd3a-1df9" name="Faction: White Scars"/>
  <categoryEntry hidden="false" id="5c0e-4c31-d51b-e470" name="Warlord">
   <constraints>
    <constraint field="selections" id="16ac-a6c9-6d9a-d6d5" includeChildForces="false" includeChildSelections="true" percentValue="false" scope="roster" shared="true" type="min" value="1"/>
    <constraint field="selections" id="3d50-6d29-4f91-8f73" includeChildForces="false" includeChildSelections="true" percentValue="false" scope="roster" shared="true" type="max" value="1"/>
   </constraints>
  </categoryEntry>
  <categoryEntry hidden="false" id="9c0e-7e25-4580-e439" name="Daemon"/>
  <categoryEntry hidden="false" id="6474-0ce3-6b5a-120c" name="Primarch"/>
  <categoryEntry hidden="false" id="4f09-0141-6c70-6c5a" name="Daemon Prince"/>
  <categoryEntry hidden="false" id="b00b-5bae-444f-964e" name="Swarm"/>
  <categoryEntry hidden="false" id="2471-e2e0-3f55-d6cb" name="Drone"/>
  <categoryEntry hidden="false" id="7850-cc5a-c191-b80d" name="Great Devourer"/>
  <categoryEntry hidden="false" id="cc77-a53-fca8-f48e" name="Retinue"/>
  <categoryEntry hidden="false" id="740a-892c-8958-defa" name="Terminator"/>
  <categoryEntry hidden="false" id="50a2-5557-84bb-ca4d" name="Rhino"/>
  <categoryEntry hidden="false" id="dda2-bb0a-215e-ad9c" name="Jump Pack"/>
  <categoryEntry hidden="false" id="4c40-ab9-54af-d290" name="Armiger"/>
  <categoryEntry id="e4d6-1a77-132b-f39d" name="Questoris"/>
  <categoryEntry id="af4c-b971-a31c-669c" name="Dominus"/>
  <categoryEntry hidden="false" id="887b-ab87-92a2-20f5" name="Allied Units">
   <modifiers>
    <modifier field="name" type="set" value="Brood Brothers">
     <conditions>
      <condition childId="3bdf-a114-5035-c6ac" field="selections" includeChildForces="true" includeChildSelections="true" scope="primary-catalogue" shared="true" type="instanceOf" value="1"/>
     </conditions>
    </modifier>
   </modifiers>
  </categoryEntry>
  <categoryEntry hidden="false" id="f76f-29c1-de9-74c2" name="Acastus"/>
  <categoryEntry hidden="false" id="481c-3b2e-5c99-c248" name="Cerastus"/>
  <categoryEntry hidden="false" id="8cab-448d-37b7-32bc" name="Artillery"/>
 </categoryEntries>
 <forceEntries>
  <forceEntry hidden="false" id="bb9d-299a-ed60-2d8a" name="Army Roster">
   <categoryLinks>
    <categoryLink hidden="false" id="d5de-ee57-ad4b-e4b7" name="Configuration" primary="false" targetId="4ac9-fd30-1e3d-b249"/>
    <categoryLink hidden="false" id="16fc-8e39-ee82-cf96" name="Epic Hero" primary="false" targetId="4f3a-f0f7-6647-348d"/>
    <categoryLink hidden="false" id="c932-1176-dc9-b390" name="New Category (link)" primary="false" targetId="9cfd-1c32-585f-7d5c">
     <constraints>
      <constraint field="selections" id="f08b-2179-601f-9af" includeChildForces="true" includeChildSelections="true" percentValue="false" scope="roster" shared="true" type="min" value="1"/>
     </constraints>
    </categoryLink>
    <categoryLink hidden="false" id="b3ba-1e1a-a92d-60d2" name="Battleline" primary="false" targetId="e338-111e-d0c6-b687"/>
    <categoryLink hidden="false" id="6d77-b79d-3ccb-6bf6" name="Infantry" primary="false" targetId="cf47-a0d7-7207-29dc"/>
    <categoryLink hidden="false" id="f5d5-b603-69b3-411c" name="Swarm" primary="false" targetId="b00b-5bae-444f-964e"/>
    <categoryLink hidden="false" id="6503-057c-cb62-badb" name="Mounted" primary="false" targetId="14a0-40c9-2748-ae6e"/>
    <categoryLink hidden="false" id="87ea-37d2-7b40-c708" name="Beast" primary="false" targetId="4c3e-9310-a516-3590"/>
    <categoryLink hidden="false" id="8e39-465e-7cfc-3085" name="Monster" primary="false" targetId="9693-cf84-fe69-37a9"/>
    <categoryLink hidden="false" id="2c76-65c5-bad0-8208" name="Vehicle" primary="false" targetId="dbd4-63-af05-998"/>
    <categoryLink hidden="false" id="8243-857b-2133-8887" name="Drone" primary="false" targetId="2471-e2e0-3f55-d6cb"/>
    <categoryLink hidden="false" id="cf3e-2c24-fe34-39f9" name="Dedicated Transport" primary="false" targetId="ba07-411c-2832-1f79"/>
    <categoryLink hidden="false" id="9198-c35d-71cd-eea3" name="Fortification" primary="false" targetId="19d7-9c74-2140-5851"/>
    <categoryLink hidden="false" id="a41a-6330-4718-d8d2" name="Unit" primary="false" targetId="1160-70ae-a862-b1a8"/>
    <categoryLink hidden="false" id="8d39-1cfc-6e44-2dae" name="Allied Units" targetId="887b-ab87-92a2-20f5" type="category"/>
   </categoryLinks>
  </forceEntry>
  <forceEntry hidden="false" id="1d6e-2579-8e7f-1ed4" name="Boarding Patrol">
   <categoryLinks>
    <categoryLink hidden="false" id="4f79-1f3a-7f95-ae21" name="Configuration" primary="false" targetId="4ac9-fd30-1e3d-b249"/>
    <categoryLink hidden="false" id="73b6-764d-b0ab-977c" name="Epic Hero" primary="false" targetId="4f3a-f0f7-6647-348d"/>
    <categoryLink hidden="false" id="95ea-911f-b9a5-2d3e" name="New Category (link)" primary="false" targetId="9cfd-1c32-585f-7d5c">
     <constraints>
      <constraint field="selections" id="f08b-2179-601f-9af" includeChildForces="true" includeChildSelections="true" percentValue="false" scope="roster" shared="true" type="min" value="1"/>
     </constraints>
    </categoryLink>
    <categoryLink hidden="false" id="57d9-fc38-a603-fdd2" name="Battleline" primary="false" targetId="e338-111e-d0c6-b687"/>
    <categoryLink hidden="false" id="ee07-d0f5-deb6-b64c" name="Infantry" primary="false" targetId="cf47-a0d7-7207-29dc"/>
    <categoryLink hidden="false" id="6d07-c461-1f18-a3eb" name="Swarm" primary="false" targetId="b00b-5bae-444f-964e"/>
    <categoryLink hidden="false" id="d9fd-28fe-bd15-d67e" name="Mounted" primary="false" targetId="14a0-40c9-2748-ae6e"/>
    <categoryLink hidden="false" id="9835-544c-d9d1-72bf" name="Beast" primary="false" targetId="4c3e-9310-a516-3590"/>
    <categoryLink hidden="false" id="bc76-9342-c298-99c9" name="Monster" primary="false" targetId="9693-cf84-fe69-37a9"/>
    <categoryLink hidden="false" id="61bf-bd6b-cba7-70b2" name="Vehicle" primary="false" targetId="dbd4-63-af05-998"/>
    <categoryLink hidden="false" id="5db7-9406-f21f-2de0" name="Drone" primary="false" targetId="2471-e2e0-3f55-d6cb"/>
    <categoryLink hidden="false" id="fe2b-ae0-8572-b6ff" name="Dedicated Transport" primary="false" targetId="ba07-411c-2832-1f79"/>
    <categoryLink hidden="false" id="d932-86b9-29ec-c799" name="Retinue" targetId="cc77-a53-fca8-f48e"/>
   </categoryLinks>
  </forceEntry>
 </forceEntries>
 <entryLinks>
  <entryLink collective="false" hidden="false" id="7380-3e40-6ed6-b7cc" import="true" name="Battle Size" targetId="564e-fbc6-5266-3ea4" type="selectionEntry"/>
 </entryLinks>
 <sharedSelectionEntries>
  <selectionEntry collective="false" hidden="false" id="564e-fbc6-5266-3ea4" import="true" name="Battle Size" type="upgrade">
   <constraints>
    <constraint field="selections" id="d907-5a90-75f2-feec" includeChildForces="true" includeChildSelections="true" percentValue="false" scope="roster" shared="true" type="max" value="1"/>
    <constraint field="selections" id="6b1c-4cb6-1e16-5ada" includeChildForces="true" includeChildSelections="true" percentValue="false" scope="roster" shared="true" type="min" value="1"/>
   </constraints>
   <categoryLinks>
    <categoryLink hidden="false" id="bc21-bf76-b29d-576c" name="Configuration" primary="true" targetId="4ac9-fd30-1e3d-b249"/>
   </categoryLinks>
   <selectionEntryGroups>
    <selectionEntryGroup collective="false" hidden="false" id="b960-4789-a3a6-59cb" import="true" name="Battle Size">
     <constraints>
      <constraint field="selections" id="132a-318-b78a-7afb" includeChildForces="false" includeChildSelections="false" percentValue="false" scope="parent" shared="true" type="min" value="1"/>
      <constraint field="selections" id="dea4-90c8-6d86-3a01" includeChildForces="false" includeChildSelections="false" percentValue="false" scope="parent" shared="true" type="max" value="1"/>
     </constraints>
     <selectionEntries>
      <selectionEntry collective="false" hidden="false" id="d62d-db22-4893-4bc0" import="true" name="1. Incursion (1000 Point limit)" type="upgrade">
       <costs>
        <cost name="pts" typeId="51b2-306e-1021-d207" value="0"/>
       </costs>
      </selectionEntry>
      <selectionEntry collective="false" hidden="false" id="baf8-997f-e323-a090" import="true" name="2. Strike Force (2000 Point limit)" type="upgrade">
       <costs>
        <cost name="pts" typeId="51b2-306e-1021-d207" value="0"/>
       </costs>
      </selectionEntry>
      <selectionEntry collective="false" hidden="false" id="4204-82d0-908c-a62a" import="true" name="3. Onslaught (3000 Point limit)" type="upgrade">
       <costs>
        <cost name="pts" typeId="51b2-306e-1021-d207" value="0"/>
       </costs>
      </selectionEntry>
     </selectionEntries>
    </selectionEntryGroup>
   </selectionEntryGroups>
   <costs>
    <cost name="pts" typeId="51b2-306e-1021-d207" value="0"/>
   </costs>
  </selectionEntry>
  <selectionEntry hidden="false" id="9ed-cbf4-bfe5-90bf" import="true" name="Show Legends" type="upgrade">
   <categoryLinks>
    <categoryLink id="8f35-ad49-afb5-715" name="Configuration" primary="true" targetId="4ac9-fd30-1e3d-b249"/>
   </categoryLinks>
   <constraints>
    <constraint field="selections" id="7cbd-24e3-bacb-1eb1" includeChildForces="false" includeChildSelections="false" percentValue="false" scope="force" shared="true" type="min" value="1"/>
    <constraint field="selections" id="51d8-e3c2-867-5eb" scope="parent" shared="true" type="min" value="1"/>
    <constraint field="selections" id="1f32-5aaa-603e-fed1" scope="parent" shared="true" type="max" value="1"/>
   </constraints>
   <modifiers>
    <modifier field="7cbd-24e3-bacb-1eb1" type="set" value="0"/>
    <modifier field="51d8-e3c2-867-5eb" type="set" value="0"/>
    <modifier field="name" type="set" value="Legends are visible"/>
   </modifiers>
  </selectionEntry>
  <selectionEntry hidden="false" id="2973-ea51-7f8d-5403" import="true" name="Show Unaligned Forces" type="upgrade">
   <constraints>
    <constraint field="selections" id="756f-43f7-60e3-d93b" includeChildForces="false" includeChildSelections="false" percentValue="false" scope="force" shared="true" type="min" value="1"/>
    <constraint field="selections" id="2caa-2d0e-2ef7-2245" scope="parent" shared="true" type="min" value="1"/>
    <constraint field="selections" id="ed3f-a6a6-a555-2a07" scope="parent" shared="true" type="max" value="1"/>
   </constraints>
   <modifiers>
    <modifier field="756f-43f7-60e3-d93b" type="set" value="0"/>
    <modifier field="2caa-2d0e-2ef7-2245" type="set" value="0"/>
    <modifier field="name" type="set" value="Unaligned Forces are visible"/>
   </modifiers>
  </selectionEntry>
  <selectionEntry hidden="false" id="e916-2cf4-a49d-b8c4" import="true" name="Show Unaligned Fortifications" type="upgrade">
   <constraints>
    <constraint field="selections" id="555c-624d-1099-249b" includeChildForces="false" includeChildSelections="false" percentValue="false" scope="force" shared="true" type="min" value="1"/>
    <constraint field="selections" id="d690-2eb1-642-a72a" scope="parent" shared="true" type="min" value="1"/>
    <constraint field="selections" id="355a-61e4-abb8-b97b" scope="parent" shared="true" type="max" value="1"/>
   </constraints>
   <modifiers>
    <modifier field="555c-624d-1099-249b" type="set" value="0"/>
    <modifier field="d690-2eb1-642-a72a" type="set" value="0"/>
    <modifier field="name" type="set" value="Unaligned Foritifications are visible"/>
   </modifiers>
  </selectionEntry>
  <selectionEntry hidden="false" id="e8ef-836a-a9d1-901d" import="true" name="Show/Hide Options" type="upgrade">
   <entryLinks>
    <entryLink hidden="false" id="892f-57ca-d650-7199" import="true" name="Show Legends" targetId="9ed-cbf4-bfe5-90bf" type="selectionEntry"/>
    <entryLink hidden="false" id="985-e753-2e94-859" import="true" name="Show Unaligned Forces" targetId="2973-ea51-7f8d-5403" type="selectionEntry"/>
    <entryLink hidden="false" id="4d37-22c-a45c-64f8" import="true" name="Show Unaligned Fortifications" targetId="e916-2cf4-a49d-b8c4" type="selectionEntry"/>
   </entryLinks>
   <constraints>
    <constraint field="selections" id="7478-2e95-2444-b500" includeChildForces="false" includeChildSelections="false" percentValue="false" scope="force" shared="true" type="min" value="1"/>
   </constraints>
   <modifiers>
    <modifier field="7478-2e95-2444-b500" type="set" value="0"/>
    <modifier field="category" type="set-primary" value="4ac9-fd30-1e3d-b249"/>
   </modifiers>
  </selectionEntry>
 </sharedSelectionEntries>
 <sharedRules>
  <rule hidden="false" id="8bf7-8812-923d-29e4" name="Pistol" page="25" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [pistola] em seu perfil são conhecidas como pistolas.Se uma unidade contiver quaisquer modelos equipados com pistolas, essa unidade será elegível para fotografar na fase de tiro de seu jogador controlador, mesmo enquanto está dentro da faixa de engajamento de uma ou mais unidades inimigas.Quando essa unidade é selecionada para fotografar, ela só pode resolver ataques usando suas pistolas e só pode atingir uma das unidades inimigas da qual está dentro da faixa de engajamento.Em tais circunstâncias, uma pistola pode atingir uma unidade inimiga, mesmo que outras unidades aliadas estejam dentro da faixa de engajamento da mesma unidade inimiga.

Se um modelo estiver equipado com uma ou mais pistolas, a menos que seja um modelo de monstro ou veículo, ele poderá disparar com suas pistolas ou com todas as outras armas de longo alcance.Declare se esse modelo disparará com suas pistolas ou outras armas de longo alcance antes de selecionar alvos.
   </description>
  </rule>
  <rule hidden="false" id="8367-374c-f87-c627" name="Hazardous" page="28" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [perigosas] em seu perfil são conhecidas como armas perigosas.Cada vez que uma unidade é selecionada para atirar ou lutar, se um ou mais modelos atacarem com armas perigosas, depois que a unidade resolveu todos os seus ataques, você deve fazer um teste perigoso para cada arma perigosa que foi usada apenas rolando um D6.Para cada jogada de 1, esse teste falhou e um modelo nessa unidade equipado com uma arma perigosa é destruído (selecionado pelo jogador controlador), a menos que esse modelo seja um personagem, monstro ou veículo; nesse caso, sofre 3 ferimentos mortaisem vez de.Observe que, se você selecionou um modelo de caractere em uma unidade anexada, as ferimentos mortais sofridas devem ser alocadas para esse modelo primeiro, mesmo que haja outro modelo nessa unidade que perdeu uma ou mais feridas ou os ataques alocados nesta fase.
   </description>
  </rule>
  <rule hidden="false" id="b4dd-3e1f-41cb-218f" name="Leader" page="39" publicationId="48fc-15aa-b307-9443">
   <description>
    Enquanto uma unidade de guarda -costas contém um líder, ela é conhecida como uma unidade anexada e, com exceção das regras que são acionadas quando as unidades são destruídas (pág. 12), ela é tratada como uma única unidade para todas as regras.Cada vez que um ataque tem como alvo uma unidade anexada, até que a unidade de ataque resolva todos os seus ataques, você deve usar a característica de resistência dos modelos de guarda -costas nessa unidade, mesmo que um líder nessa unidade tenha uma característica de resistência diferente.Cada vez que um ataque enrola com sucesso uma unidade anexada, esse ataque não pode ser alocado a um modelo de caractere nessa unidade, mesmo que esse modelo de caractere tenha perdido uma ou mais feridas ou já teve ataques alocados nessa fase.Assim que o último modelo de guarda -costas em uma unidade anexada foi destruído, quaisquer ataques feitos contra a unidade que ainda não foram alocados podem ser alocados para os modelos de caracteres nessa unidade.
   </description>
  </rule>
  <rule hidden="false" id="be1e-ac8e-1e2c-3528" name="Devastating Wounds" page="28" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [feridas devastadoras] em seu perfil são conhecidas como armas devastadoras de feridas.Cada vez que um ataque é feito com essa arma, uma ferida crítica inflige uma série de ferimentos mortais no alvo igual à característica de dano dessa arma e a sequência de ataques termina.
   </description>
  </rule>
  <rule hidden="false" id="fc8a-8c24-bae9-cc1c" name="Assault" page="25" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [assalto] em seu perfil são conhecidas como armas de assalto.Se uma unidade que avançou, essa curva contiver qualquer modelos equipados com armas de assalto, ainda é elegível para fotografar nesta fase de tiro desta vez.Quando essa unidade é selecionada para fotografar, você só pode resolver ataques usando armas de assalto com as quais seus modelos estão equipados.
   </description>
  </rule>
  <rule hidden="false" id="115b-79dc-f723-d761" name="Extra Attacks" page="28" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [ataques extras] em seu perfil são conhecidas como armas de ataques extras.Cada vez que o portador de uma arma brigas, ele pode fazer ataques com essa arma, além daquele que escolhe lutar.O número de ataques feitos com uma arma de ataques extras não pode ser modificado por outras regras.
   </description>
  </rule>
  <rule hidden="false" id="cf93-ad4d-2f08-a79d" name="Twin-linked" page="25" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [link gêmeo] em seu perfil são conhecidas como armas de liga dupla.Cada vez que um ataque é feito com essa arma, você pode re-rolar novamente a jogada para ferir desse ataque.
   </description>
  </rule>
  <rule hidden="false" id="4111-82e3-9444-e942" name="Anti-" page="28" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [anti-teclado x+] em seu perfil são conhecidas como anti-armas.Cada vez que um ataque é feito com essa arma contra um alvo com a palavra-chave após a palavra 'anti-', uma jogada de ferida não modificado de 'X+' obtém uma ferida crítica.
   </description>
  </rule>
  <rule hidden="false" id="1897-c22c-9597-12b1" name="Sustained Hits" page="28" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [hits sustentados x] em seu perfil são conhecidos como armas de sucessos sustentados.Cada vez que um ataque é feito com essa arma, se um acerto crítico for rolado, esse ataque obtém uma série de acertos adicionais no alvo, conforme indicado por 'x'
   </description>
  </rule>
  <rule hidden="false" id="1202-10a8-78e9-4c67" name="Heavy" page="26" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [pesado] em seu perfil são conhecidas como armas pesadas.Cada vez que um ataque é feito com essa arma, se a unidade do modelo de ataque permanecesse estacionária neste turno, adicione 1 à jogada de sucesso desse ataque.
   </description>
  </rule>
  <rule hidden="false" id="7cdb-fb99-44a9-8849" name="Melta" page="26" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [Melta X] em seu perfil são conhecidas como armas Melta.Cada vez que um ataque feito com essa arma tem como alvo uma unidade dentro da metade da faixa da arma, a característica de dano do ataque é aumentada pelo valor denotado por 'X'.
   </description>
  </rule>
  <rule hidden="false" id="9bf4-280f-bbe2-6fbb" name="Feel No Pain" page="23" publicationId="48fc-15aa-b307-9443">
   <description>
    Alguns modelos 'não sentem dor x+' listados em suas habilidades.Cada vez que um modelo com essa habilidade sofre danos e, portanto, perdia uma ferida (incluindo feridas perdidas devido a ferimentos mortais), role um d6: se o resultado for maior ou igual ao número denotado por 'x: essa ferida é ignorada enão está perdido.Se um modelo tem mais de um não sentir capacidade de dor, você só pode usar uma dessas habilidades cada vez que o modelo
sofre danos e, portanto, for perder um ponto de vida.
   </description>
  </rule>
  <rule hidden="false" id="6c1f-1cf7-ff25-c99e" name="Blast" page="26" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [explosão] em seu perfil são conhecidas como armas de explosão e fazem um número aleatório de ataques.Cada vez que você determina quantos ataques são feitos com uma arma de explosão, adicione 1 ao resultado a cada cinco modelos que estavam na unidade de destino quando você a selecionou como alvo (arredondando).As armas de explosão nunca podem ser usadas para fazer ataques contra uma unidade que está dentro da faixa de engajamento de uma ou mais unidades do exército do modelo de ataque (incluindo sua própria unidade).
   </description>
  </rule>
  <rule hidden="false" id="9143-31ae-e0a6-6007" name="Precision" page="26" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [precisão] em seu perfil são conhecidas como armas de precisão.Cada vez que um ataque feito com essa arma feriu com sucesso uma unidade anexa, se um modelo de caractere nessa unidade estiver visível para o modelo de ataque, o jogador do modelo de ataque pode optar por ter esse ataque alocado a esse modelo de personagem, em vez de seguir o ataque normalseqüência.
   </description>
  </rule>
  <rule hidden="false" id="4ddd-4e29-acdd-5e6d" name="Indirect Fire" page="26" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [fogo indireto] em seu perfil são conhecidas como armas de fogo indiretas, e os ataques podem ser feitos com eles, mesmo que o alvo não seja visível para o modelo de ataque.Esses ataques podem destruir modelos inimigos em uma unidade de destino, mesmo que nenhum possa ter sido visível para a unidade de ataque quando você selecionou esse alvo.

Se nenhum modelos em uma unidade de destino for visível para a unidade de ataque quando você selecionar esse alvo, cada vez que um modelo na unidade de ataque faz um ataque contra esse alvo usando uma arma de fogo indireta, subtraia 1 da jogada de sucesso desse ataque e o alvotem o benefício da cobertura contra esse ataque.
   </description>
  </rule>
  <rule hidden="false" id="2ebc-abdf-8129-6c57" name="Lance" page="25" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [Lance] em seu perfil são conhecidas como armas de lança.Cada vez que um ataque é feito com essa arma, se o portador fizer uma carga moveu essa curva, adicione 1 à jogada para ferir desse ataque.
   </description>
  </rule>
  <rule hidden="false" id="d1d1-611e-5191-1095" name="Lethal Hits" page="25" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [hits letais] em seu perfil são conhecidos como armas letais.Cada vez que um ataque é feito com essa arma, um acerto crítico feriu automaticamente o alvo.
   </description>
  </rule>
  <rule hidden="false" id="4640-43e7-30b-215a" name="Ignores Cover" page="25" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [ignorar a cobertura] em seu perfil são conhecidas como armas ignoradas.Cada vez que um ataque é feito com essa arma, o alvo não pode ter o benefício de cobertura contra esse ataque.
   </description>
  </rule>
  <rule hidden="false" id="c5c8-8b58-b8b6-7786" name="Rapid Fire" page="25" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [fogo rápido x] em seu perfil são conhecidas como armas rápidas de incêndio.Cada vez que essa arma tem como alvo uma unidade dentro da metade da gama dessa arma, os ataques característicos dessa arma são aumentados pela quantidade denotada por 'X'.
   </description>
  </rule>
  <rule hidden="false" id="5edf-d619-23e0-9b56" name="Torrent" page="25" publicationId="48fc-15aa-b307-9443">
   <description>
    As armas com [torrent] em seu perfil são conhecidas como armas de torrent.Cada vez que um ataque é feito com essa arma, esse ataque atinge automaticamente o alvo.
   </description>
  </rule>
  <rule hidden="false" id="ada6-bac1-ffe0-d6f7" name="Scouts" page="39" publicationId="48fc-15aa-b307-9443">
   <description>
    Algumas unidades têm 'Scouts X' listados em suas habilidades.Se todo modelo de uma unidade tiver essa habilidade, no início da primeira rodada de batalha, antes do início do primeiro turno, ele pode fazer um movimento normal de até X" como se fosse a fase de movimento - assim como qualquer transporte dedicadoModelo como uma unidade inicia a batalha embarcada (desde que apenas os modelos com essa capacidade sejam embarcados dentro desse modelo de transporte dedicado). Uma unidade que se move usando essa habilidade deve acabar com a mudança mais de 9 \ "horizontalmente para longe de todos os modelos inimigos.Se os dois jogadores têm unidades que podem fazer isso, o jogador que está tomando o primeiro turno move suas unidades primeiro.
   </description>
  </rule>
  <rule hidden="false" id="c05d-f4c3-f091-4938" name="Infiltrators" page="39" publicationId="48fc-15aa-b307-9443">
   <description>
    Durante a implantação, se todo modelo de uma unidade tiver essa habilidade, quando você a configurar, ela poderá ser montada em qualquer lugar do campo de batalha que seja mais de 9" na horizontal da zona de implantação inimiga e de todos os modelos inimigos.
   </description>
  </rule>
  <rule hidden="false" id="7cb5-dd6b-dd87-ad3b" name="Deep Strike" page="39" publicationId="48fc-15aa-b307-9443">
   <description>
    Durante a etapa das formações de batalha, se todo modelo de uma unidade tiver essa habilidade, você poderá configurá -lo em reservas em vez de configurá -lo no campo de batalha.Se você o fizer, na etapa de reforços de uma de suas fases de movimento, poderá montar esta unidade em qualquer lugar do campo de batalha que seja mais de 9" para longe de todos os modelos inimigos.
   </description>
  </rule>
  <rule hidden="false" id="b68a-5ded-65ac-98c" name="Deadly Demise" page="23" publicationId="48fc-15aa-b307-9443">
   <description>
    Alguns modelos têm 'morte mortal x' listados em suas habilidades.Quando esse modelo for destruído, role um D6 antes de removê -lo do jogo (se esse modelo for um transporte, role antes de qualquer modelos embarcados desembarcar).Em um 6, cada unidade dentro de 6" desse modelo sofre uma série de ferimentos mortais denotadas por 'x' (se esse for um número aleatório, role separadamente para cada unidade dentro de 6").
   </description>
  </rule>
  <rule hidden="false" id="bec5-4288-34a6-ccfa" name="Stealth" page="20" publicationId="48fc-15aa-b307-9443">
   <description>
    Se todo modelo de uma unidade tiver essa habilidade, cada vez que um ataque de longo alcance é feito contra ele, subtraia 1 da jogada de sucesso desse ataque.
   </description>
  </rule>
  <rule hidden="false" id="5e13-1624-d280-418d" name="Super-Heavy Walker">
   <description>
    Cada vez que um modelo com essa habilidade produz um movimento normal, avançado ou descendente, ele pode se mover sobre os modelos (excluindo os modelos Titanic) e os recursos de terreno com 4" ou menos em altura como se não estivessem lá.
   </description>
  </rule>
  <rule hidden="false" id="a8a0-8fe7-898-e0f3" name="Lone Operative" page="19" publicationId="48fc-15aa-b307-9443">
   <description>
    A menos que parte de uma unidade anexada, esta unidade só pode ser selecionada como alvo de um ataque à distância se o modelo de ataque estiver dentro de 12" .
   </description>
  </rule>
  <rule hidden="false" id="eec5-5f54-9c03-c305" name="Hover" page="53" publicationId="48fc-15aa-b307-9443">
   <description>
    Alguns modelos de aeronaves têm 'pau' listados em suas habilidades.Quando você é instruído a declarar formações de batalha, antes de fazer qualquer outra coisa, você deve primeiro declarar quais modelos do seu exército com essa capacidade estarão no modo pairar.

Se um modelo estiver no modo de pairar, então até o final da batalha, sua característica de movimento é alterada para 20" , perde a palavra -chave da aeronave e perde todas as regras associadas por ser um modelo de alrcraft. Os modelos no modo de pairar não iniciam oBatalha em reservas, mas você pode optar por colocá -las em reservas estratégicas seguindo as regras normais, se desejar.
   </description>
  </rule>
  <rule hidden="false" id="24-c886-e8ba-5a89" name="Fights First" page="32" publicationId="48fc-15aa-b307-9443">
   <description>
    As unidades com essa capacidade que são elegíveis para lutar o fazem no primeiro passo das lutas, desde que todos os modelo da unidade tenham essa habilidade.
   </description>
  </rule>
  <rule hidden="false" id="e9c4-2bb8-12ee-cd1b" name="Psychic" page="38" publicationId="48fc-15aa-b307-9443">
   <description>
    Algumas armas e habilidades só podem ser usadas por psykers.Tais armas e habilidades são marcadas com a palavra 'psíquico'.Se uma arma ou capacidade psíquica faz com que qualquer unidade sofra uma ou mais feridas, cada uma dessas feridas é considerada infligida por um ataque psíquico.
   </description>
  </rule>
  <rule hidden="false" id="13b2-6518-dab3-7ea1" name="Firing Deck" page="17">
   <description>
    Alguns modelos de transporte têm listado o 'Deck X' em suas habilidades.Cada vez que esse modelo é selecionado para disparar na fase de tiro, você pode selecionar os modelos 'X' embarcados dentro dele.Em seguida, para cada um desses modelos embarcados, você pode selecionar uma arma de longo alcance com a qual o modelo embarcado está equipado.Até que esse modelo de transporte resolva todos os seus ataques, ele conta como sendo equipado com todas as armas que você selecionou dessa maneira, além de suas outras armas.
   </description>
  </rule>
  <rule hidden="false" id="cd26-1611-860a-91e4" name="One Shot">
   <description>
    O portador só pode atirar com esta arma uma vez por batalha.
   </description>
  </rule>
 </sharedRules>
 <sharedProfiles>
  <profile hidden="false" id="fa4e-5ac8-11a6-78d2" name="Fortification" typeId="9cc3-6d83-4dd3-9b64" typeName="Abilities">
   <characteristics>
    <characteristic name="Description" typeId="9b8f-694b-e5e-b573">
     Enquanto uma unidade inimiga está apenas dentro da faixa de engajamento de uma ou mais fortificações do seu exército:
- Essa unidade ainda pode ser selecionada como alvo de ataques à altura, mas cada vez que esse ataque é feito, a menos que seja feito com uma pistola, subtraia 1 da jogada de acerto.
- Os modelos nessa unidade não precisam fazer testes desesperados de fuga devido à recuperação enquanto se chocou, exceto aqueles que se moverão sobre os modelos inimigos ao fazê-lo.
    </characteristic>
   </characteristics>
  </profile>
 </sharedProfiles>
</gameSystem>
