import java
import semmle.code.java.dataflow.TaintTracking
import DataFlow::PathGraph

predicate passedToSQL(Expr e) {
  exists(MethodAccess m |
    m.getMethod().getQualifiedName() = "SQL.executeQuery" and
    e = m.getAnArgument()
  )
}

predicate sanitized(Expr e) {
  exists(MethodAccess m |
    m.getMethod().getQualifiedName() = "SQL.sanitizeString" and
    e = m.getAnArgument()
  )
}

class SQLInjectionConfiguration extends TaintTracking::Configuration {
  SQLInjectionConfiguration() { this = "SQLInjectionConfiguration" }

  override predicate isSource(DataFlow::Node source) { 
    exists(MethodAccess m |
      m.getMethod().getQualifiedName() = "Request.getParameter" and
      source.asExpr() = m
    )
   }

  override predicate isSink(DataFlow::Node sink)mport java
import semmle.code.java.dataflow.TaintTracking
import DataFlow::PathGraph

predicate passedToSQL(Expr e) {
  exists(MethodAccess m |
    m.getMethod().getQualifiedName() = "SQL.executeQuery" and
    e = m.getAnArgument()
  )
}

predicate sanitized(Expr e) {
  exists(MethodAccess m |
    m.getMethod().getQualifiedName() = "SQL.sanitizeString" and
    e = m.getAnArgument()
  )
}

class SQLInjectionConfiguration extends TaintTracking::Configuration {
  SQLInjectionConfiguration() { this = "SQLInjectionConfiguration" }

  override predicate isSource(DataFlow::Node source) { 
    exists(MethodAccess m |
      m.getMethod().getQualifiedName() = "Request.getParameter" and
      source.asExpr() = m
    )
   }

  override predicate isSink(DataFlow::Node sink) {
    exists(Expr e |
      passedToSQL(e) and
      sink.asExpr() = e
    )
   }

  override predicate isSanitizer(DataFlow::Node node) { 
    exists(Expr e |
      sanitized(e) and
      node.asExpr() = e
    )
   }
}

from SQLInjectionConfiguration dataflow, DataFlow::Node source, DataFlow::Node sink
where dataflow.hasFlow(source, sink) 
select source, sink


  override predicate isSanitizer(DataFlow::Node node) { 
    exists(Expr e |
      sanitized(e) and
      node.asExpr() = e
    )
   }
}

from SQLInjectionConfiguration dataflow, DataFlow::Node source, DataFlow::Node sink
where dataflow.hasFlow(source, sink) 
select source, sink
