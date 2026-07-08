<?xml version="1.0" encoding="EUC-KR"?>
<SABANG_GOODS_REGI>
	<HEADER>
		<SEND_COMPAYNY_ID><%= agentUserId %></SEND_COMPAYNY_ID>
		<SEND_AUTH_KEY><%= apiKey %></SEND_AUTH_KEY>
		<SEND_DATE><%= sendDate %></SEND_DATE>
		<SEND_GOODS_CD_RT>Y</SEND_GOODS_CD_RT>
		<RESULT_TYPE>XML</RESULT_TYPE>
	</HEADER>
	<% for(OnJegoXmlVO entry: form) { %>
	<DATA>
		<COMPAYNY_GOODS_CD><![CDATA[ <%= entry.getGdsCd() %> ]]></COMPAYNY_GOODS_CD>
		<SKU_INFO>
			<SKU_VALUE>단품^^<%= entry.getJegoCnt() %></SKU_VALUE>
		</SKU_INFO>
	</DATA>
	<% } %>
</SABANG_GOODS_REGI>
