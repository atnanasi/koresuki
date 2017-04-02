# -*- coding: utf-8 -*-
# これすきする奴

Plugin.create(:koresuki) do
	# 標準設定
	UserConfig[:koresuki_string] ||= "これすき"
	UserConfig[:koresuki_format] ||= "%Y%m%d%H%M%S%N"
	UserConfig[:koresuki_unixtime] ||= false

	command(
		:koresuki_cmd,
		name: 'これすき',
		condition: -> _ { true },
		visible: true,
		role: :timeline
	) do
		t = Time.now
		if UserConfig[:koresuki_unixtime] == true then
			strs = UserConfig[:koresuki_string] + t.to_i.to_s
		else
			strs = UserConfig[:koresuki_string] + t.strftime(UserConfig[:koresuki_format])
		end
		Post.primary_service.update(:message => strs)
	end

	# 設定画面
	settings "これすき" do
		input "接頭語", :koresuki_string
		input "フォーマット文字列", :koresuki_format
		boolean "UNIX時間を使う", :koresuki_unixtime
	end
end
