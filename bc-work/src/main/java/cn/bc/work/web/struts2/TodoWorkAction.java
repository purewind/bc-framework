/**
 * 
 */
package cn.bc.work.web.struts2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.bc.core.query.condition.Condition;
import cn.bc.core.query.condition.Direction;
import cn.bc.core.query.condition.impl.OrCondition;
import cn.bc.core.query.condition.impl.OrderCondition;
import cn.bc.web.formater.BooleanFormater;
import cn.bc.web.formater.CalendarFormater;
import cn.bc.web.struts2.EntityAction;
import cn.bc.web.ui.html.grid.Column;
import cn.bc.web.ui.html.grid.GridData;
import cn.bc.web.ui.html.grid.TextColumn;
import cn.bc.web.ui.html.page.PageOption;
import cn.bc.web.ui.html.toolbar.Toolbar;
import cn.bc.web.ui.html.toolbar.ToolbarButton;
import cn.bc.web.ui.html.toolbar.ToolbarSearchButton;
import cn.bc.work.domain.TodoWork;
import cn.bc.work.service.TodoWorkService;

/**
 * 待办事务Action
 * 
 * @author dragon
 * 
 */
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@Controller
public class TodoWorkAction extends EntityAction<Long, TodoWork> {
	private static final long serialVersionUID = 1L;
	//private TodoWorkService todoWorkService;

	@Autowired
	public void setTodoWorkService(TodoWorkService todoWorkService) {
		//this.todoWorkService = todoWorkService;
		this.setCrudService(todoWorkService);
	}

	@Override
	protected GridData buildGridData(List<Column> columns) {
		return super.buildGridData(columns).setRowLabelExpression("work.subject");
	}

	@Override
	protected Condition getCondition() {
		OrCondition condition = this.getSearchCondition();
		if (condition != null)
			condition.add(new OrderCondition("sendDate", Direction.Desc));
		return condition;
	}

	@Override
	protected String[] getSearchFields() {
		return new String[] { "work.classifier", "work.subject", "sender.name" };
	}

	// 设置页面的尺寸
	@Override
	protected PageOption buildListPageOption() {
		return super.buildListPageOption().setWidth(600).setMinWidth(300)
				.setHeight(400).setMinHeight(300);
	}

	@Override
	protected Toolbar buildToolbar() {
		Toolbar tb = new Toolbar();

		// 办理按钮
		tb.addButton(new ToolbarButton().setIcon("ui-icon-check")
				.setText(getText("label.do"))
				.setClick("bc.todoWorkList.doWork"));

		// 搜索按钮
		ToolbarSearchButton sb = new ToolbarSearchButton();
		sb.setAction("search").setTitle(getText("title.click2search"));
		tb.addButton(sb);

		return tb;
	}

	@Override
	protected List<Column> buildGridColumns() {
		List<Column> columns = super.buildGridColumns();
		columns.add(new TextColumn("work.classifier",
				getText("work.classifier"), 150).setSortable(true).setValueFormater(
				new BooleanFormater(getText("label.yes"), getText("label.no"))));
		columns.add(new TextColumn("work.subject", getText("work.subject"))
				.setSortable(true));
		columns.add(new TextColumn("work.sendDate", getText("work.sendDate"),
				120).setSortable(true).setDir(Direction.Desc)
				.setValueFormater(new CalendarFormater()));
		columns.add(new TextColumn("sender.name", getText("work.sender.name"),
				120).setSortable(true));
		return columns;
	}

	@Override
	protected String getJs() {
		return contextPath + "/bc/work/todoWork/list.js";
	}
}
