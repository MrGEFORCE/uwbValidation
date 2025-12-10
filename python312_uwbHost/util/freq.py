import matplotlib.pyplot as plt
import matplotlib.patches as patches
import numpy as np


def plot_two_bandlines(bands1, bands2, bands3):
    """
    绘制两个频段区域，每个区域由多个长方形组成

    Parameters
    ----------
    bands1 : list of tuples [(x1, x2), ...]
        第一条线上各个频段的范围
    bands2 : list of tuples [(x1, x2), ...]
        第二条线上各个频段的范围
    """

    fig, ax = plt.subplots(figsize=(8, 3))

    # y 坐标定义
    y1, y2, y3 = 0, 1, 2
    height = 0.4  # 长方形高度

    # 自动生成不同颜色
    def generate_colors(n):
        # numpy线性颜色生成
        cmap = plt.get_cmap('tab10')
        return [cmap(i % 10) for i in range(n)]

    colors1 = generate_colors(len(bands1))
    colors2 = generate_colors(len(bands2))
    colors3 = generate_colors(len(bands3))

    func_list = ["comm", "radar", "interference"]

    # 绘制第一条线的一组长方形
    for i, (x1, x2) in enumerate(bands1):
        width = x2 - x1
        rect = patches.Rectangle((x1, y1 - height / 2), width, height,
                                 linewidth=1, edgecolor='k',
                                 facecolor=colors1[i])
        ax.add_patch(rect)
        ax.text(
            x1 + width / 2,  # 字的横坐标（矩形中心）
            0,  # 字的纵坐标（矩形中心）
            func_list[i],  # 显示的文字内容
            ha='center', va='center', color='black', fontsize=15
        )

    # 绘制第二条线的一组长方形
    for i, (x1, x2) in enumerate(bands2):
        width = x2 - x1
        rect = patches.Rectangle((x1, y2 - height / 2), width, height,
                                 linewidth=1, edgecolor='k',
                                 facecolor=colors2[i])
        ax.add_patch(rect)

    # 绘制第三条线的一组长方形
    rf_list = ["RF1", "RF2", "RF3"]
    for i, (x1, x2) in enumerate(bands3):
        width = x2 - x1
        rect = patches.Rectangle((x1, y3 - height / 2), width, height,
                                 linewidth=1, edgecolor='k',
                                 facecolor=colors3[i])
        ax.add_patch(rect)
        ax.text(
            x1 + width / 2,  # 字的横坐标（矩形中心）
            2,  # 字的纵坐标（矩形中心）
            rf_list[i],  # 显示的文字内容
            ha='center', va='center', color='black', fontsize=15
        )

    ax.axvline(x=6, ymin=0, ymax=1, color='red', linestyle='--', linewidth=2, zorder=0)

    # 让矩形在竖线之上（zorder=1）
    for patch in ax.patches:
        patch.set_zorder(1)

    ax.set_xlim(3, 9)
    ax.set_ylim(0, 2.2)

    # 设置显示范围
    all_x = [x for band in (bands1 + bands2) for x in band]
    xmin, xmax = min(all_x), max(all_x)
    ax.set_xlim(xmin - 0.1 * (xmax - xmin), xmax + 0.1 * (xmax - xmin))
    ax.set_ylim(-0.5, 2.5)

    # 纵轴无意义，但可标注两条线位置
    ax.set_yticks([y1, y2, y3])
    ax.set_yticklabels(["function", "RF demand", "RF chain"])

    ax.set_xlabel("Frequency")
    ax.set_ylabel("Type")
    ax.set_title("")

    plt.tight_layout()
    plt.show()


# =============================
# 示例用法
if __name__ == "__main__":
    bands1 = [(0.3, 2), (2, 6), (6, 18)]
    bands2 = [(0.3, 0.8), (2, 4), (4, 8), (8, 18)]
    bands3 = [(0.3, 2), (2, 6), (6, 18)]
    plot_two_bandlines(bands1, bands2, bands3)
