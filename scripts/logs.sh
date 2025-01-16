#!/usr/bin/env bash
set -euxo pipefail

# 定義變數
LOG_FILE="nginx-access.log"
OUTPUT_FILE="filtered_log.txt"

# 確認 log 檔是否存在
if [[ ! -f $LOG_FILE ]]; then
    echo "Log file $LOG_FILE 不存在，請確認檔案名稱和路徑。"
    exit 1
fi

# 功能選單
echo "請選擇要執行的分析功能："
echo "1. 篩選指定 IP 的請求"
echo "2. 提取特定時間範圍的請求"
echo "3. 統計每種 HTTP 狀態碼的數量"
read -p "請輸入選項號碼 (1/2/3)： " OPTION

case $OPTION in
1)
    # 篩選指定 IP 的請求
    read -p "請輸入要篩選的 IP 地址： " TARGET_IP
    grep "$TARGET_IP" "$LOG_FILE" > "$OUTPUT_FILE"
    echo "已將 IP 為 $TARGET_IP 的請求記錄儲存到 $OUTPUT_FILE。"
    ;;
2)
    # 提取特定時間範圍的請求
    read -p "請輸入開始時間 (格式: [dd/MMM/yyyy:HH:mm:ss])： " START_TIME
    read -p "請輸入結束時間 (格式: [dd/MMM/yyyy:HH:mm:ss])： " END_TIME
    awk -v start="$START_TIME" -v end="$END_TIME" '
        $0 ~ start, $0 ~ end {print $0}
    ' "$LOG_FILE" > "$OUTPUT_FILE"
    echo "已將時間範圍為 $START_TIME 到 $END_TIME 的請求記錄儲存到 $OUTPUT_FILE。"
    ;;
3)
    # 統計每種 HTTP 狀態碼的數量
    awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr > "$OUTPUT_FILE"
    echo "已將 HTTP 狀態碼的統計結果儲存到 $OUTPUT_FILE。"
    ;;
*)
    echo "無效的選項，請重新執行腳本並選擇正確的功能。"
    exit 1
    ;;
esac

# 完成
echo "分析完成！請查看輸出文件：$OUTPUT_FILE"
